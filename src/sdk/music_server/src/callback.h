/*
 * callback.h
 *
 *  Created on: Mar 25, 2018
 *      Author: ruben
 */

#ifndef SRC_CALLBACK_H_
#define SRC_CALLBACK_H_

#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xparameters.h"

extern volatile unsigned int * _memptr_;

// from server tcp connection
err_t sent_from_server(void * arg, struct tcp_pcb *tpcb,
		u16_t len);
err_t recv_from_server(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err);
err_t accept_from_server(void *arg, struct tcp_pcb *tpcb,
		err_t err);

// to server tcp connection
err_t sent_to_server(void * arg, struct tcp_pcb *tpcb,
		u16_t len);
err_t recv_to_server(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err);
err_t accept_to_server(void *arg, struct tcp_pcb *tpcb,
		err_t err);

#endif /* SRC_CALLBACK_H_ */
