################################################################################
#      DO NOT MODIFY THIS FILE UNLESS YOU ARE SURE OF WHAT YOU ARE DOING       #
################################################################################

# All of the sources participating in the build are defined here
-include objects.mk
-include sources.mk
-include tests/subdir.mk
-include src/subdir.mk

all: run_tests copy_template

run: $(BIN_DIR) $(PROJECT)
	./$(BIN_DIR)/$(PROJECT)

run_tests: $(BIN_DIR) $(PROJECT)_tests
	clear && ./$(BIN_DIR)/$(PROJECT)_tests

# Tool invocations
$(PROJECT): $(BIN_DIR) $(CODE_OBJS)
	@echo 'Building target: $@'
	$(CC) $(LFLAGS) $(CODE_OBJS) $(LIBS) -o $(BIN_DIR)/$@ 
	@echo 'Finished building target: $@'
	@echo ' '

$(PROJECT)_tests: $(BIN_DIR) $(CODE_OBJS) $(TESTS_OBJS) $(LIB_DIR)/$(TESTS_LIB)
	@echo 'Building target: $@'
	$(CC) $(LFLAGS) $(CODE_OBJS) $(TESTS_OBJS) $(LIBS) -o $(BIN_DIR)/$@ 
	@echo 'Finished building target: $@'
	@echo ' '
	
$(TESTS_DIR)/$(PROJECT)_tests_main.c: $(TESTS_DIR)/$(PROJECT)_tests.h
	@echo 'Generating file: $<'
	cd $(TESTS_DIR) && ../generate_main_tests $(PROJECT)_tests
	@echo ' '

$(BIN_DIR):
	mkdir -p $@

$(TEMPLATE)/lib:
	mkdir -p $@

# Other Targets
clean:
	-$(RM) $(CODE_OBJS) $(TESTS_OBJS) $(EXECUTABLES) $(TESTS_DIR)/$(PROJECT)_tests_main.c $(PROJECT) $(PROJECT)_tests $(BIN_DIR) $(LIB_DIR)/$(TESTS_LIB) $(TEMPLATE)/lib/*dojo_unit*
	-@echo ' '

copy_template: generate_main_tests $(LIB_DIR)/$(TESTS_LIB) $(SRC_DIR)/$(PROJECT).h
	cp generate_main_tests $(TEMPLATE)/ && cp $(LIB_DIR)/$(TESTS_LIB) $(SRC_DIR)/$(PROJECT).h

.PHONY: all clean
.SECONDARY:

$(LIB_DIR)/$(TESTS_LIB): $(SRC_DIR)/$(PROJECT).o
	$(CC) -dynamiclib -undefined dynamic_lookup -single_module $< -o $@ && cp $(SRC_DIR)/$(PROJECT).h $(LIB_DIR)/$(TESTS_LIB) c_project_template/lib/
