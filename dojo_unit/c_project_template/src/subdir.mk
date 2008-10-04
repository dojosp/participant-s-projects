# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../$(SRC_DIR)/$(PROJECT).c 

CODE_OBJS += \
./$(SRC_DIR)/$(PROJECT).o 

# Each subdirectory must supply rules for building sources it contributes
$(SRC_DIR)/%.o: $(BIN_DIR) ../$(SRC_DIR)/%.c
	@echo 'Building file: $@'
	$(CC) $(CFLAGS) -o $(BIN_DIR)/"$@" "$<"
	@echo 'Finished building: $@'
	@echo ' '


