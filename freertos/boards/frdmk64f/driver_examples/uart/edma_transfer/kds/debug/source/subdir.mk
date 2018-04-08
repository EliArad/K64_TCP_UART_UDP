################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/MyGitHub/K64/boards/frdmk64f/driver_examples/uart/edma_transfer/uart_edma_transfer.c 

OBJS += \
./source/uart_edma_transfer.o 

C_DEPS += \
./source/uart_edma_transfer.d 


# Each subdirectory must supply rules for building sources it contributes
source/uart_edma_transfer.o: C:/MyGitHub/K64/boards/frdmk64f/driver_examples/uart/edma_transfer/uart_edma_transfer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin -Wall  -g -DDEBUG -DCPU_MK64FN1M0VLL12 -DFRDM_K64F -DFREEDOM -I../../../../../../../CMSIS/Include -I../../../../../../../devices -I../../../../.. -I../.. -I../../../../../../../devices/MK64F12/drivers -I../../../../../../../devices/MK64F12/utilities/io -I../../../../../../../devices/MK64F12/utilities/str -I../../../../../../../devices/MK64F12/utilities/log -I../../../../../../../devices/MK64F12/utilities -I../../../../../../../devices/MK64F12 -std=gnu99 -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


