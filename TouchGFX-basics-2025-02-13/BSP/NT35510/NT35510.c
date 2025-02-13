#include "./NT35510/NT35510.h"

inline static void nt35510_write_reg(uint16_t address,uint16_t data){
    (*(uint16_t*)NT35510_COMM_ADDRESS) = address;
    (*(uint16_t*)NT35510_DATA_ADDRESS) = data;
}
inline static void nt35510_read_reg(uint16_t address,uint16_t *pdata){
    (*(uint16_t*)NT35510_COMM_ADDRESS) = address;
    *pdata = (*(uint16_t*)NT35510_DATA_ADDRESS);
}

int nt35510_colmod(uint16_t data){
    nt35510_write_reg(0x3A00,data);
    return NT35510_OK;
}

int nt35510_caset(uint16_t xs,uint16_t xe){
    nt35510_write_reg(0x2A00,(xs>>8)&0xFF);
    nt35510_write_reg(0x2A01,(xs>>0)&0xFF);
    nt35510_write_reg(0x2A02,(xe>>8)&0xFF);
    nt35510_write_reg(0x2A03,(xe>>0)&0xFF);
    return NT35510_OK;
}

int nt35510_raset(uint16_t ys,uint16_t ye){
    nt35510_write_reg(0x2B00,(ys>>8)&0xFF);
    nt35510_write_reg(0x2B01,(ys>>0)&0xFF);
    nt35510_write_reg(0x2B02,(ye>>8)&0xFF);
    nt35510_write_reg(0x2B03,(ye>>0)&0xFF);
    return NT35510_OK;
}

int nt35510_ramwr(uint16_t *pdata,uint32_t size){
    (*(uint16_t*)NT35510_COMM_ADDRESS) = 0x2C00;
    for(uint32_t i=0;i<size;++i){
        (*(uint16_t*)NT35510_DATA_ADDRESS) = pdata[i];
    }
    return NT35510_OK;
}

int nt35510_init(void){
    nt35510_write_reg(0x0100,0x00);
    HAL_Delay(200);
    nt35510_write_reg(0x1100,0x00);
    nt35510_write_reg(0x2900,0x00);
    HAL_Delay(5);
    nt35510_colmod(0x55);
    HAL_Delay(5);
    return NT35510_OK;
}

extern void DisplayDriver_TransferCompleteCallback();
int touchgfxDisplayDriverTransmitActive(){
    return 0;
}
void touchgfxDisplayDriverTransmitBlock(const uint8_t* pixels, uint16_t x, uint16_t y, uint16_t w, uint16_t h){
    nt35510_caset(x,x+w-1);
    nt35510_raset(y,y+h-1);
    nt35510_ramwr((uint16_t*)pixels,w*h);
    DisplayDriver_TransferCompleteCallback();
}


