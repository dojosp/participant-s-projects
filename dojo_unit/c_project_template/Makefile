################################################################################
#      DO NOT MODIFY THIS FILE UNLESS YOU ARE SURE OF WHAT YOU ARE DOING       #
################################################################################

# All of the sources participating in the build are defined here
-include objects.mk
-include sources.mk
-include tests/subdir.mk
-include src/subdir.mk

all: run_tests

run: $(BIN_DIR) $(PROJECT)
	./$(BIN_DIR)/$(PROJECT)

run_tests: $(BIN_DIR) $(PROJECT)_tests
	clear && ./$(BIN_DIR)/$(PROJECT)_tests

# Tool invocations
$(PROJECT): $(BIN_DIR) $(CODE_OBJS)
	@echo 'Building target: $@'
	$(CC) $(LFLAGS) -o $(BIN_DIR)/$@ $(CODE_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

$(PROJECT)_tests: $(BIN_DIR) $(CODE_OBJS) $(TESTS_OBJS) $(LIB_DIR)/$(TESTS_LIB)
	@echo 'Building target: $@'
	$(CC) $(LFLAGS) -o $(BIN_DIR)/$@ $(CODE_OBJS) $(TESTS_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	
$(TESTS_DIR)/$(PROJECT)_tests_main.c: $(TESTS_DIR)/$(PROJECT)_tests.h
	@echo 'Generating file: $<'
	cd $(TESTS_DIR) && ../generate_main_tests $(PROJECT)_tests
	@echo ' '

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Other Targets
clean:
	-$(RM) $(CODE_OBJS) $(TESTS_OBJS) $(EXECUTABLES) $(TESTS_DIR)/$(PROJECT)_tests_main.c $(PROJECT) $(PROJECT)_tests $(BIN_DIR)
	-@echo ' '

.PHONY: all clean
.SECONDARY:
