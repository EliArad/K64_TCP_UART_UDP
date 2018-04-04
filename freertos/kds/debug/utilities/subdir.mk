################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/MyGitHub/K64/devices/MK64F12/utilities/fsl_assert.c \
C:/MyGitHub/K64/devices/MK64F12/utilities/fsl_debug_console.c \
C:/MyGitHub/K64/devices/MK64F12/utilities/io/fsl_io.c \
C:/MyGitHub/K64/devices/MK64F12/utilities/log/fsl_log.c \
C:/MyGitHub/K64/devices/MK64F12/utilities/fsl_sbrk.c \
C:/MyGitHub/K64/devices/MK64F12/utilities/str/fsl_str.c 

OBJS += \
./utilities/fsl_assert.o \
./utilities/fsl_debug_console.o \
./utilities/fsl_io.o \
./utilities/fsl_log.o \
./utilities/fsl_sbrk.o \
./utilities/fsl_str.o 

C_DEPS += \
./utilities/fsl_assert.d \
./utilities/fsl_debug_console.d \
./utilities/fsl_io.d \
./utilities/fsl_log.d \
./utilities/fsl_sbrk.d \
./utilities/fsl_str.d 


# Each subdirectory must supply rules for building sources it contributes
utilities/fsl_assert.o: C:/MyGitHub/K64/devices/MK64F12/utilities/fsl_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/fsl_debug_console.o: C:/MyGitHub/K64/devices/MK64F12/utilities/fsl_debug_console.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/fsl_io.o: C:/MyGitHub/K64/devices/MK64F12/utilities/io/fsl_io.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/fsl_log.o: C:/MyGitHub/K64/devices/MK64F12/utilities/log/fsl_log.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/fsl_sbrk.o: C:/MyGitHub/K64/devices/MK64F12/utilities/fsl_sbrk.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/fsl_str.o: C:/MyGitHub/K64/devices/MK64F12/utilities/str/fsl_str.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../../../rtos/amazon-freertos/lib/FreeRTOS/portable/GCC/ARM_CM4F -I../../../../../../../../platform/components/phyksz8081 -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../.. -I../.. -I../../../../../../../../rtos/amazon-freertos/lib/include -I../../../../../../../../rtos/amazon-freertos/lib/include/private -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../devices/MK64F12 -I../../../../../../../../middleware/lwip/port -I../../../../../../../../middleware/lwip/src -I../../../../../../../../middleware/lwip/src/include -I../../../../../../../../middleware/lwip/contrib/apps -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


