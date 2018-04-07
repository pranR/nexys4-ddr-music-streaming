/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include "xparameters.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xuartlite_l.h"
#include "xuartlite.h"
#include "xparameters.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

#include "bluetooth.h"
#include "callback.h"

// TCP STRUCTURES
struct tcp_pcb *recv_pcb;
struct tcp_pcb *send_pcb;

/* bluetooth settings */
#define BT_UARTLITE XPAR_UARTLITE_0_DEVICE_ID
#define BT_BASEADDR 0x40610000

int status;
char user_byte;
XUartLite UartLite_1;
/* end bluetooth settings */

volatile unsigned int * rdptr = (unsigned int*)XPAR_MIG_7SERIES_0_HIGHADDR - 3000000;
int i = 0;

int echo = 1;
int count = 0;

int transfer_data() {
	if(!pause) {
		if(_memptr_ - rdptr >= 1024) {
			if (tcp_sndbuf(send_pcb) >= 4096) {

				tcp_write(send_pcb, rdptr, 4096, 1);
				tcp_output(send_pcb);
				//if(rdptr + 1024 < (unsigned int*)XPAR_MIG_7SERIES_0_HIGHADDR) {
					rdptr = rdptr + 1024;
				//}
				//else {
				//	rdptr = (unsigned int*)XPAR_MIG_7SERIES_0_HIGHADDR - 102400;
				//}
			}
		}
	}
	return 0;
}

void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
	xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

err_t err_callback(void * arg, err_t err) {
	xil_printf("ERROR");
	return ERR_IF;
}
err_t sent_callback(void * arg, struct tcp_pcb *tpcb, u16_t len) {
	//xil_printf("Sent!\n\r");
	if(!echo) {
		if(count < i) {
			if (tcp_sndbuf(tpcb) > 1024) {
				//tcp_write(tpcb, memptr[count], 1024, 1);
				tcp_output(tpcb);
				count = count + 1024;
			} else {
				xil_printf("no space in tcp_sndbuf\n\r");
				return ERR_IF;
			}
		}
	}
	return ERR_OK;
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	//xil_printf("RECEIVED: %c\n\r",p->payload);
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		xil_printf("ERROR\n\r");
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}
	if(p->len < 100) {
		xil_printf("RECEIVED END\n\r");
		int echo = 0;
		if(count < i) {
			if (tcp_sndbuf(tpcb) > 1024) {
				//err = tcp_write(tpcb, memptr[count], 1024, 1);
				tcp_output(tpcb);
				count = count + 1024;
			} else
				xil_printf("no space in tcp_sndbuf\n\r");

		}
	}
	else {
		int begin = i;
		int errs = 0;
		int lenInWords = p->len/4;
		//xil_printf("len=%d\n\r",lenInWords);
		/* echo payload */
		/* in this case, we assume that the payload is < TCP_SND_BUF */
		if(echo) {
			if (tcp_sndbuf(tpcb) > p->len) {

				err = tcp_write(tpcb, p->payload, p->len, 1);
				tcp_output(tpcb);
			} else {
				xil_printf("no space in tcp_sndbuf\n\r");
				return ERR_IF;
			}

		}
		for(int j = 0; j < lenInWords; j++) {
			//memptr[i] = ((unsigned int*)(p->payload))[j];
			i++;
		}
		/*
		for(int j = 0; j < lenInWords; j++) {
			if(memptr[begin+j] != ((unsigned int*)(p->payload))[j])
				errs++;
		}

		xil_printf("errs=%d\n\r",errs);
		*/
	}

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	/* free the received pbuf */
	pbuf_free(p);

	return ERR_OK;
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{

	xil_printf("CONNECTED to port %d\n\r",newpcb->remote_port);

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);
	tcp_sent(newpcb, sent_callback);
	tcp_err(newpcb, err_callback);

	return ERR_OK;
}

err_t accept_audio_out (void *arg, struct tcp_pcb *newpcb, err_t err)
{

	xil_printf("CONNECTED to port %d\n\r",newpcb->remote_port);

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);
	tcp_sent(newpcb, sent_callback);
	tcp_err(newpcb, err_callback);

	return ERR_OK;
}

int start_application()
{
	err_t err;
	unsigned port = 9090;
	ip_addr_t my_ip;
    my_ip.addr = ((u32_t)((11) & 0xff) << 24) |
				 ((u32_t)((1) & 0xff) << 16) |
				 ((u32_t)((168) & 0xff) << 8)  |
				  (u32_t)((192) & 0xff);
	/* create new TCP PCB structure */
	recv_pcb = tcp_new();
	if (!recv_pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	err = tcp_connect(recv_pcb, &my_ip, port, accept_from_server);
	if (err!= ERR_OK) {
		xil_printf("tcp_connect failed\n\r");
	}

	err_t err2;
	unsigned port2 = 9091;

	send_pcb = tcp_new();
	if (!send_pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	err2 = tcp_connect(send_pcb, &my_ip, port2, accept_to_server);
	if (err2!= ERR_OK) {
		xil_printf("tcp_connect failed\n\r");
	}

	return 0;
}
