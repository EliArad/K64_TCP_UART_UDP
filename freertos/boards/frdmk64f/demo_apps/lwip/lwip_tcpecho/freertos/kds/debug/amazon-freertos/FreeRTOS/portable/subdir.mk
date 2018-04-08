################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/MyGitHub/K64_TCP_UART_UDP/freertos/rtos/amazon-freertos/lib/FreeRTOS/portable/MemMang/heap_3.c \
C:/MyGitHub/K64_TCP_UART_UDP/freertos/rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./amazon-freertos/FreeRTOS/portable/heap_3.o \
./amazon-freertos/FreeRTOS/portable/port.o 

C_DEPS += \
./amazon-freertos/FreeRTOS/portable/heap_3.d \
./amazon-freertos/FreeRTOS/portable/port.d 


# Each subdirectory must supply rules for building sources it contributes
amazon-freertos/FreeRTOS/portable/heap_3.o: C:/MyGitHub/K64_TCP_UART_UDP/freertos/rtos/amazon-freertos/lib/FreeRTOS/portable/MemMang/heap_3.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

amazon-freertos/FreeRTOS/portable/port.o: C:/MyGitHub/K64_TCP_UART_UDP/freertos/rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


