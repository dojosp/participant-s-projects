TESTS_LIB := libdojo_unit.dylib

$(LIB_DIR)/$(TESTS_LIB): $(SRC_DIR)/$(PROJECT).o $(LIB_DIR)
	@echo 'Compiling $(OS_NAME) Dojo Unit Library'
	$(CC) -dynamiclib -undefined dynamic_lookup -single_module $< -o $@
	@echo 'Copying header and generate library to template folder'
	cp $(SRC_DIR)/$(PROJECT).h $(LIB_DIR)/$(TESTS_LIB) c_project_template/lib/
	@echo ' '
