################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../warmup/warmup.sdk/audioserver/src/lscript.ld 

C_SRCS += \
../warmup/warmup.sdk/audioserver/src/bluetooth.c \
../warmup/warmup.sdk/audioserver/src/callback.c \
../warmup/warmup.sdk/audioserver/src/echo.c \
../warmup/warmup.sdk/audioserver/src/i2c_access.c \
../warmup/warmup.sdk/audioserver/src/iic_phyreset.c \
../warmup/warmup.sdk/audioserver/src/main.c \
../warmup/warmup.sdk/audioserver/src/platform.c \
../warmup/warmup.sdk/audioserver/src/platform_mb.c \
../warmup/warmup.sdk/audioserver/src/platform_ppc.c \
../warmup/warmup.sdk/audioserver/src/platform_zynq.c \
../warmup/warmup.sdk/audioserver/src/platform_zynqmp.c \
../warmup/warmup.sdk/audioserver/src/sfp.c \
../warmup/warmup.sdk/audioserver/src/si5324.c 

OBJS += \
./warmup/warmup.sdk/audioserver/src/bluetooth.o \
./warmup/warmup.sdk/audioserver/src/callback.o \
./warmup/warmup.sdk/audioserver/src/echo.o \
./warmup/warmup.sdk/audioserver/src/i2c_access.o \
./warmup/warmup.sdk/audioserver/src/iic_phyreset.o \
./warmup/warmup.sdk/audioserver/src/main.o \
./warmup/warmup.sdk/audioserver/src/platform.o \
./warmup/warmup.sdk/audioserver/src/platform_mb.o \
./warmup/warmup.sdk/audioserver/src/platform_ppc.o \
./warmup/warmup.sdk/audioserver/src/platform_zynq.o \
./warmup/warmup.sdk/audioserver/src/platform_zynqmp.o \
./warmup/warmup.sdk/audioserver/src/sfp.o \
./warmup/warmup.sdk/audioserver/src/si5324.o 

C_DEPS += \
./warmup/warmup.sdk/audioserver/src/bluetooth.d \
./warmup/warmup.sdk/audioserver/src/callback.d \
./warmup/warmup.sdk/audioserver/src/echo.d \
./warmup/warmup.sdk/audioserver/src/i2c_access.d \
./warmup/warmup.sdk/audioserver/src/iic_phyreset.d \
./warmup/warmup.sdk/audioserver/src/main.d \
./warmup/warmup.sdk/audioserver/src/platform.d \
./warmup/warmup.sdk/audioserver/src/platform_mb.d \
./warmup/warmup.sdk/audioserver/src/platform_ppc.d \
./warmup/warmup.sdk/audioserver/src/platform_zynq.d \
./warmup/warmup.sdk/audioserver/src/platform_zynqmp.d \
./warmup/warmup.sdk/audioserver/src/sfp.d \
./warmup/warmup.sdk/audioserver/src/si5324.d 


# Each subdirectory must supply rules for building sources it contributes
warmup/warmup.sdk/audioserver/src/%.o: ../warmup/warmup.sdk/audioserver/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../music_server_bsp/microblaze_0/include -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


