################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BSP/NT35510/NT35510.c \
../BSP/NT35510/atk_md0430_touch.c \
../BSP/NT35510/atk_md0430_touch_iic.c 

C_DEPS += \
./BSP/NT35510/NT35510.d \
./BSP/NT35510/atk_md0430_touch.d \
./BSP/NT35510/atk_md0430_touch_iic.d 

OBJS += \
./BSP/NT35510/NT35510.o \
./BSP/NT35510/atk_md0430_touch.o \
./BSP/NT35510/atk_md0430_touch_iic.o 


# Each subdirectory must supply rules for building sources it contributes
BSP/NT35510/%.o BSP/NT35510/%.su BSP/NT35510/%.cyclo: ../BSP/NT35510/%.c BSP/NT35510/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/admin/STM32CubeIDE/workspace_1.16.1/TouchGFX/BSP" -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-BSP-2f-NT35510

clean-BSP-2f-NT35510:
	-$(RM) ./BSP/NT35510/NT35510.cyclo ./BSP/NT35510/NT35510.d ./BSP/NT35510/NT35510.o ./BSP/NT35510/NT35510.su ./BSP/NT35510/atk_md0430_touch.cyclo ./BSP/NT35510/atk_md0430_touch.d ./BSP/NT35510/atk_md0430_touch.o ./BSP/NT35510/atk_md0430_touch.su ./BSP/NT35510/atk_md0430_touch_iic.cyclo ./BSP/NT35510/atk_md0430_touch_iic.d ./BSP/NT35510/atk_md0430_touch_iic.o ./BSP/NT35510/atk_md0430_touch_iic.su

.PHONY: clean-BSP-2f-NT35510

