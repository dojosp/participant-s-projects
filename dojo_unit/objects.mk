PROJECT := dojo_unit

TEMPLATE := c_project_template
SRC_DIR := src
TESTS_DIR := tests
LIB_DIR := lib
BIN_DIR := bin
SCRIPT_DIR := scripts

CC := gcc
LFLAGS := -Wall -pedantic
CFLAGS := -Wall -pedantic $(DEBUG)
RM := rm -rf

TESTS_LIB := libdojo_unit.dylib

LIBS :=

USER_OBJS :=
