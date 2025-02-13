/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : STM32TouchController.cpp
  ******************************************************************************
  * This file was created by TouchGFX Generator 4.24.1. This file is only
  * generated once! Delete this file from your project and re-generate code
  * using STM32CubeMX or change this file manually to update it.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* USER CODE BEGIN STM32TouchController */

#include <STM32TouchController.hpp>

extern "C" {
    #include "./NT35510/atk_md0430_touch.h"
}

void STM32TouchController::init()
{
    /**
     * Initialize touch controller and driver
     *
     */
    atk_md0430_touch_init();
}

bool STM32TouchController::sampleTouch(int32_t& x, int32_t& y)
{
    /**
     * By default sampleTouch returns false,
     * return true if a touch has been detected, otherwise false.
     *
     * Coordinates are passed to the caller by reference by x and y.
     *
     * This function is called by the TouchGFX framework.
     * By default sampleTouch is called every tick, this can be adjusted by HAL::setTouchSampleRate(int8_t);
     *
     */

    static bool state;
    static atk_md0430_touch_point_t point[5] = {0};

    x = point[0].x;
    y = point[0].y;

    static uint32_t tickstart = 0;
    if ((HAL_GetTick() - tickstart) < 30)return state;
    tickstart = HAL_GetTick();

    state = false;
    if(atk_md0430_touch_scan(point, 5)){
        state = true;
    }
    return state;
}

/* USER CODE END STM32TouchController */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
