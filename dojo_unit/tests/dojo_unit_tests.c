#include "dojo_unit_tests.h"

void test_assert_true_false() {
  assert_true("True is not true", true);
  assert_false("False is not false", false);
  assert_true("Not False is not true", !false);
  assert_false("Not True is not false", !true);
}

void test_assert_same_ints() {
  int zero = 0, um = 1, un = 1;
  assert_not_same("0 == 1", zero, um);
  assert_same("1 == 1", um, um);
  assert_same("1 <> 1", um, un);
  assert_not_same("1 == 0", um, zero);
}

void test_assert_same_doubles() {
  double null = 0.2, one = 1.5, nothing = 0.0, none = 0.0, unit = 1.0;
  assert_not_same("0.2 == 1.5", null, one);
  assert_same("1.5 <> 1.5", one, one);
  assert_same("0.0 <> 0.0", nothing, none);
  assert_not_same("0.0 == 1.0", nothing, unit);
  assert_not_same("1.5 == 0.2", one, null);
}

void test_assert_equals() {
  char *a = "a", *b = "b";
  assert_not_equals("\"a\" == \"b\"", a, b, strcmp);
  assert_equals("\"a\" <> \"a\"", a, a, strcmp);
  assert_not_equals("\"b\" == \"a\"", b, a, strcmp);	
}

void test_assert_null() {
  char *a = "a";
  assert_null("NULL is not null", NULL);
  assert_not_null("\"a\" is null", a);
}