#include "xintc.h"
extern int pause;
void RecvHandler(void *CallBackRef, unsigned int EventData);
void platform_uartlite_intr(XIntc * xintcp);
int enable_bluetooth();
int wait_for_data();
