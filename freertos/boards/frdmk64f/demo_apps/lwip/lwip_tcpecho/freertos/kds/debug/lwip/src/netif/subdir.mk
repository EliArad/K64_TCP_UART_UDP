################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/MyGitHub/K64_TCP_UART_UDP/freertos/middleware/lwip/src/netif/ethernet.c \
C:/MyGitHub/K64_TCP_UART_UDP/freertos/middleware/lwip/src/netif/lowpan6.c \
C:/MyGitHub/K64_TCP_UART_UDP/freertos/middleware/lwip/src/netif/slipif.c 

OBJS += \
./lwip/src/netif/ethernet.o \
./lwip/src/netif/lowpan6.o \
./lwip/src/netif/slipif.o 

C_DEPS += \
./lwip/src/netif/ethernet.d \
./lwip/src/netif/lowpan6.d \
./lwip/src/netif/slipif.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/netif/ethernet.o: C:/MyGitHub/K64_TCP_UART_UDP/freertos/middleware/lwip/src/netif/ethernet.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/netif/lowpan6.o: C:/MyGitHub/K64_TCP_UART_UDP/freertos/middleware/lwip/src/netif/lowpan6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/netif/slipif.o: C:/MyGitHub/K64_TCP_UART_UDP/freertos/middleware/lwip/src/netif/slipif.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


