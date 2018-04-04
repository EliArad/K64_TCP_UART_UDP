################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/autoip.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/dhcp.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/etharp.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/icmp.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/igmp.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/ip4.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/ip4_addr.c \
C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/ip4_frag.c 

OBJS += \
./lwip/src/core/ipv4/autoip.o \
./lwip/src/core/ipv4/dhcp.o \
./lwip/src/core/ipv4/etharp.o \
./lwip/src/core/ipv4/icmp.o \
./lwip/src/core/ipv4/igmp.o \
./lwip/src/core/ipv4/ip4.o \
./lwip/src/core/ipv4/ip4_addr.o \
./lwip/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./lwip/src/core/ipv4/autoip.d \
./lwip/src/core/ipv4/dhcp.d \
./lwip/src/core/ipv4/etharp.d \
./lwip/src/core/ipv4/icmp.d \
./lwip/src/core/ipv4/igmp.d \
./lwip/src/core/ipv4/ip4.d \
./lwip/src/core/ipv4/ip4_addr.d \
./lwip/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/ipv4/autoip.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/autoip.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/dhcp.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/dhcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/etharp.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/etharp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/icmp.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/icmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/igmp.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/igmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/ip4.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/ip4.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/ip4_addr.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/ip4_addr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/ipv4/ip4_frag.o: C:/MyGitHub/K64/middleware/lwip/src/core/ipv4/ip4_frag.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


