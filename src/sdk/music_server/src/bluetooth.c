#include <stdio.h>
#include "xil_printf.h"
#include "xstatus.h"
#include "xuartlite.h"
#include "xuartlite_i.h"
#include "xparameters.h"
#include "xintc.h"

#define UARTLITE_DEVICE_ID XPAR_AXI_UARTLITE_1_DEVICE_ID
#define UARTLITE_INT_IRQ XPAR_INTC_0_UARTLITE_1_VEC_ID
XUartLite UartLite_1;
XUartLite * UartLite_p = &UartLite_1;
int uartlite_intr_count = 0;
int pause = 0;

void RecvHandler(void *CallBackRef, unsigned int EventData){
	//int TotalReceivedCount = EventData;
	//int gotint = *((int *)(XPAR_AXI_UARTLITE_0_BASEADDR));
	/* Received Byte*/
	//char got = gotint;
	//xil_printf("Recved %d\n",TotalReceivedCount);
	//xil_printf("%c\n",got);
	//uartlite_intr_count++;
	if(pause) {
		pause = 0;
		xil_printf("Play\n");
	}
	else {
		pause = 1;
		xil_printf("Pause\n");
	}
	return;
}

void platform_uartlite_intr(XIntc * xintcp) {
	// Setup UartLite Interrupts
	XIntc_Enable(xintcp, UARTLITE_INT_IRQ);

	XIntc_Connect(xintcp, UARTLITE_INT_IRQ,
			(XInterruptHandler)XUartLite_InterruptHandler,
			(void *)UartLite_p);

	XUartLite_SetRecvHandler(UartLite_p, RecvHandler, UartLite_p);
	XUartLite_EnableInterrupt(UartLite_p);
}

int enable_bluetooth() {
	int Status;

	/*
	 * Initialize the UartLite driver so that it is ready to use.
	 */
	Status = XUartLite_Initialize(UartLite_p, UARTLITE_DEVICE_ID);
	xil_printf("Enabled bluetooth\n");

}

int wait_for_data() {
	u8 Data;
	u8* DataBufPtr = &Data;

	XUartLite_Recv(UartLite_p, DataBufPtr, 1);
	//while(pause) {
	//	while(XUartLite_IsReceiveEmpty(UartLite_p->RegBaseAddress));
	//	XUartLite_Recv(UartLite_p, DataBufPtr, 1);
		//xil_printf("%c\n",Data);
	//}
}
