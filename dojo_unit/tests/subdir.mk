# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../$(TESTS_DIR)/dojo_unit_tests.c 

TESTS_OBJS += \
./$(TESTS_DIR)/$(PROJECT)_tests.o \
./$(TESTS_DIR)/$(PROJECT)_tests_main.o

LFLAGS += \
-Llib -ldojo_unit

# Each subdirectory must supply rules for building sources it contributes
$(TESTS_DIR)/%.o: $(BIN_DIR) ../$(TESTS_DIR)/%.c
	@echo 'Building file: $<'
	$(CC) $(CFLAGS) ../$(TESTS_DIR)/%.c -o $(BIN_DIR)/"$@" 
	@echo 'Finished building: $<'
	@echo ' '
