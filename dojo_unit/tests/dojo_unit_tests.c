#include "dojo_unit_tests.h"

void test_assert_true_false() {
  assert_true("True is not true", true);
  assert_false("False is not false", false);
  assert_true("Not False is not true", !false);
  assert_false("Not True is not false", !true);
  
  assert_true("1==1 was not true", 1 == 1);
  assert_false("1 < 1 was not false", 1 < 1);
  assert_false("1 > 1 was not false", 1 > 1);
  assert_true("1 < 2 was not true", 1 < 2);
  assert_true("2 > 1 was not true", 2 > 1);
}

void test_assert_same_ints() {
  int zero = 0, um = 1, un = 1;
  
  assert_same("1 <> 1", 1, 1);
  assert_same("um <> 1", um, 1);
  assert_same("um <> un", um, un);
  
  assert_not_same("0 == 1", 0, 1);
  assert_not_same("0 == um", 0, um);
  assert_not_same("um == zero", um, zero);
}

void test_assert_same_doubles() {
  double null = 0.2, one_and_half = 1.5;
  double nothing = 0.0, none = 0.0, unit = 1.0;

  assert_same("1.5 <> 2.5-1", 1.5, 2.5-1);
  assert_same("1.5 <> one_and_half", 1.5, one_and_half);
  assert_same("one_and_half <> one_and_half", one_and_half, one_and_half);
  assert_same("nothing <> none", nothing, none);
  
  assert_not_same("0.0 == 1.0", 0.0, 1.0);
  assert_not_same("0.0001 == 0.00001", 0.0001, 0.00001);
  assert_not_same("null == one_and_half", null, one_and_half);
  assert_not_same("nothing == unit", nothing, unit);
  assert_not_same("one_and_half == null", one_and_half, null);
}

void test_assert_equals() {
  char *a = "a", *b = "b";
  
  assert_equals("\"a\" <> \"a\"", a, a, strcmp);
  
  assert_not_equals("\"a\" == \"b\"", a, b, strcmp);
  assert_not_equals("\"b\" == \"a\"", b, a, strcmp);	
}

void test_assert_null() {
  char *a = "a";
  
  assert_null("NULL is not null", NULL);
  
  assert_not_null("\"a\" is null", a);
}
