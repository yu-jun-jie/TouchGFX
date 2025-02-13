#ifndef _NT35510_H_
#define _NT35510_H_

#include "main.h"

#define NT35510_COMM_ADDRESS    (0X60000000)
#define NT35510_DATA_ADDRESS    (0X60080000)

#define NT35510_OK      0
#define NT35510_EERON   1

int nt35510_init(void);
int nt35510_caset(uint16_t xs,uint16_t xe);
int nt35510_raset(uint16_t ys,uint16_t ye);
int nt35510_ramwr(uint16_t *pdata,uint32_t size);

#endif
