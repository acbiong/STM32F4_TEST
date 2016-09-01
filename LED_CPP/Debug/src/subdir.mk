################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/syscalls.c \
../src/system_stm32f4xx.c 

CPP_SRCS += \
../src/main.cpp 

OBJS += \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/syscalls.d \
./src/system_stm32f4xx.d 

CPP_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo %cd%
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F411VETx -DSTM32F4 -DSTM32 -DSTM32F411E_DISCO -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F411xE -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/inc" -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/CMSIS/core" -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/CMSIS/device" -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F411VETx -DSTM32F4 -DSTM32 -DSTM32F411E_DISCO -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F411xE -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/inc" -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/CMSIS/core" -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/CMSIS/device" -I"C:/Users/hbw_8/Documents/Workspace/LED_CPP/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


