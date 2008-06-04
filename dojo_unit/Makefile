# All of the sources participating in the build are defined here
-include objects.mk
-include sources.mk
-include tests/subdir.mk
-include src/subdir.mk

all: run_tests copy_template

run: $(BIN_DIR) $(PROJECT)
	@echo 'Running project executable'
	@echo ' '
	./$(BIN_DIR)/$(PROJECT)

run_tests: $(BIN_DIR) $(PROJECT)_tests
	@echo 'Running project tests executable'
	@echo ' '
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
	cd $(TESTS_DIR) && ../$(SCRIPT_DIR)/generate_main_tests $(PROJECT)_tests
	@echo ' '

$(BIN_DIR):
	@echo 'Generating $@ folder'
	mkdir -p $@
	@echo ' '

$(TEMPLATE)/lib:
	@echo 'Generating $@ folder'
	mkdir -p $@
	@echo ' '

# Other Targets
clean:
	@echo 'Cleaning folders'
	-$(RM) $(CODE_OBJS) $(TESTS_OBJS) $(EXECUTABLES) $(TESTS_DIR)/$(PROJECT)_tests_main.c $(PROJECT) $(PROJECT)_tests $(BIN_DIR) $(LIB_DIR)/$(TESTS_LIB) $(TEMPLATE)/lib/*dojo_unit*
	@echo ' '

copy_template: $(SCRIPT_DIR) $(LIB_DIR)/$(TESTS_LIB) $(SRC_DIR)/$(PROJECT).h
	@echo 'Copying files and libs to template folder'
	cp -r $(SCRIPT_DIR)/ $(TEMPLATE)/$(SCRIPT_DIR)/
	cp $(LIB_DIR)/$(TESTS_LIB) $(SRC_DIR)/$(PROJECT).h $(TEMPLATE)/lib/
	@echo ' '

.PHONY: all clean
.SECONDARY:

$(LIB_DIR)/$(TESTS_LIB): $(SRC_DIR)/$(PROJECT).o
	@echo 'Compiling OS X Dojo Unit Library'
	$(CC) -dynamiclib -undefined dynamic_lookup -single_module $< -o $@
	@echo 'Copying header and generate library to template folder'
	cp $(SRC_DIR)/$(PROJECT).h $(LIB_DIR)/$(TESTS_LIB) c_project_template/lib/
	@echo ' '

zip: clean ../$(PROJECT) $(BIN_DIR)
	@echo 'Generating $@ file for $(PROJECT)'
	cd .. && zip -r $(PROJECT)/$(BIN_DIR)/$(PROJECT).zip $(PROJECT)
	@echo ' '

tar: clean ../$(PROJECT) $(BIN_DIR)
	@echo 'Generating $@ file for $(PROJECT)'
	cd .. && tar -cf $(PROJECT)/$(BIN_DIR)/$(PROJECT).tar $(PROJECT)
	@echo ' '
	
targz: tar
	@echo 'Generating $@ file for $(PROJECT)'
	gzip $(BIN_DIR)/$(PROJECT).tar
	@echo ' '
