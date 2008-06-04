TESTS_LIB := libdojo_unit.so.1.0.0

$(LIB_DIR)/$(TESTS_LIB): $(SRC_DIR)/$(PROJECT).o $(LIB_DIR)
	@echo 'Compiling $(OS_NAME) Dojo Unit Library'
	$(CC) -shared -Wl,-soname,libdojo_unit.so.1 -lc $< -o $@
	@echo 'Copying header and generate library to template folder'
	cp $(SRC_DIR)/$(PROJECT).h $(LIB_DIR)/$(TESTS_LIB) c_project_template/lib/
	@echo ' '
