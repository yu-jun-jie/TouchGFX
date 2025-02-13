################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BSP/ATK_MD0430/atk_md0430.c \
../BSP/ATK_MD0430/atk_md0430_fmc.c \
../BSP/ATK_MD0430/atk_md0430_touch.c \
../BSP/ATK_MD0430/atk_md0430_touch_iic.c 

OBJS += \
./BSP/ATK_MD0430/atk_md0430.o \
./BSP/ATK_MD0430/atk_md0430_fmc.o \
./BSP/ATK_MD0430/atk_md0430_touch.o \
./BSP/ATK_MD0430/atk_md0430_touch_iic.o 

C_DEPS += \
./BSP/ATK_MD0430/atk_md0430.d \
./BSP/ATK_MD0430/atk_md0430_fmc.d \
./BSP/ATK_MD0430/atk_md0430_touch.d \
./BSP/ATK_MD0430/atk_md0430_touch_iic.d 


# Each subdirectory must supply rules for building sources it contributes
BSP/ATK_MD0430/%.o BSP/ATK_MD0430/%.su BSP/ATK_MD0430/%.cyclo: ../BSP/ATK_MD0430/%.c BSP/ATK_MD0430/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/admin/STM32CubeIDE/workspace_1.16.1/TouchGFX/BSP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-BSP-2f-ATK_MD0430

clean-BSP-2f-ATK_MD0430:
	-$(RM) ./BSP/ATK_MD0430/atk_md0430.cyclo ./BSP/ATK_MD0430/atk_md0430.d ./BSP/ATK_MD0430/atk_md0430.o ./BSP/ATK_MD0430/atk_md0430.su ./BSP/ATK_MD0430/atk_md0430_fmc.cyclo ./BSP/ATK_MD0430/atk_md0430_fmc.d ./BSP/ATK_MD0430/atk_md0430_fmc.o ./BSP/ATK_MD0430/atk_md0430_fmc.su ./BSP/ATK_MD0430/atk_md0430_touch.cyclo ./BSP/ATK_MD0430/atk_md0430_touch.d ./BSP/ATK_MD0430/atk_md0430_touch.o ./BSP/ATK_MD0430/atk_md0430_touch.su ./BSP/ATK_MD0430/atk_md0430_touch_iic.cyclo ./BSP/ATK_MD0430/atk_md0430_touch_iic.d ./BSP/ATK_MD0430/atk_md0430_touch_iic.o ./BSP/ATK_MD0430/atk_md0430_touch_iic.su

.PHONY: clean-BSP-2f-ATK_MD0430

