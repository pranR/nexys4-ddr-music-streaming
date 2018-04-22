/*
 * callback.c
 *
 *  Created on: Mar 25, 2018
 *      Author: ruben
 */
#include "callback.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xparameters.h"
#include "string.h"
int recved_data = 0;
volatile unsigned int * _baseptr_ = (unsigned int*)XPAR_MIG_7SERIES_0_HIGHADDR - 3000000;
volatile unsigned int * _memptr_ = (unsigned int*)XPAR_MIG_7SERIES_0_HIGHADDR - 3000000;

// from server tcp connection
err_t recv_from_server(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err) {
	//xil_printf("len: %d\n", p->len);
	//xil_printf("tot_len %d\n", p->tot_len);
	//xil_printf("_memptr_: %u\n",_memptr_);


	//		dst,	src,	len
	memcpy((void *)_memptr_, (void *)p->payload, p->len);


	//for(int i = 0; i < p->len; i ++) {
	//	xil_printf("%x",(char *)_memptr_[i]);
	//}
	//xil_printf("\n");

	if(_memptr_ +(p->len)/4 < (unsigned int *)XPAR_MIG_7SERIES_0_HIGHADDR) {
		_memptr_ = _memptr_ + (p->len)/4;
	}
	//else {
	//	_memptr_ = _baseptr_;
	//}

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

	/* free the received pbuf */
	pbuf_free(p);

	return ERR_OK;
}

err_t accept_from_server(void *arg, struct tcp_pcb *tpcb,
		err_t err) {
	xil_printf("CONNECTED to port %d\n\r",tpcb->remote_port);

	/* set the receive callback for this connection */
	tcp_recv(tpcb, recv_from_server);

	return ERR_OK;
}

// to server tcp connection
err_t sent_to_server(void * arg, struct tcp_pcb *tpcb,
		u16_t len) {
	//xil_printf("Sent!\n");
	return ERR_OK;
}

err_t accept_to_server(void *arg, struct tcp_pcb *tpcb,
		err_t err) {
	xil_printf("CONNECTED to port %d\n\r",tpcb->remote_port);

	/* set the receive callback for this connection */
	tcp_sent(tpcb, sent_to_server);

	return ERR_OK;
}
