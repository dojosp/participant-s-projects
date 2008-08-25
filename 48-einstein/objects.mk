PROJECT := 48-einstein

SRC_DIR := src
TESTS_DIR := tests
LIB_DIR := lib
BIN_DIR := bin
SCRIPT_DIR := scripts

CC := gcc
LFLAGS := -Wall -ansi -pedantic
CFLAGS := -Wall -ansi -pedantic -c $(DEBUG)
RM := rm -rf

LIBS :=

USER_OBJS :=

OS_NAME := $(shell uname -s)
