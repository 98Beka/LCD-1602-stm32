################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mylib/Src/28BYJ-48.c \
../mylib/Src/LCDFunctions.c \
../mylib/Src/Tim2.c \
../mylib/Src/delay.c \
../mylib/Src/lcd.c 

OBJS += \
./mylib/Src/28BYJ-48.o \
./mylib/Src/LCDFunctions.o \
./mylib/Src/Tim2.o \
./mylib/Src/delay.o \
./mylib/Src/lcd.o 

C_DEPS += \
./mylib/Src/28BYJ-48.d \
./mylib/Src/LCDFunctions.d \
./mylib/Src/Tim2.d \
./mylib/Src/delay.d \
./mylib/Src/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
mylib/Src/28BYJ-48.o: ../mylib/Src/28BYJ-48.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I"C:/Users/tursu/OneDrive/myProjects/LCD/mylib/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mylib/Src/28BYJ-48.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
mylib/Src/LCDFunctions.o: ../mylib/Src/LCDFunctions.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I"C:/Users/tursu/OneDrive/myProjects/LCD/mylib/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mylib/Src/LCDFunctions.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
mylib/Src/Tim2.o: ../mylib/Src/Tim2.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I"C:/Users/tursu/OneDrive/myProjects/LCD/mylib/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mylib/Src/Tim2.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
mylib/Src/delay.o: ../mylib/Src/delay.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I"C:/Users/tursu/OneDrive/myProjects/LCD/mylib/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mylib/Src/delay.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
mylib/Src/lcd.o: ../mylib/Src/lcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I"C:/Users/tursu/OneDrive/myProjects/LCD/mylib/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mylib/Src/lcd.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

