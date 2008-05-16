#include "dojo_unit.h"

static int __error_count__ = 0;
static int __pending_count__ = 0;

boolean __assert_equals(const void* a, const void* b, const int size_a, const int size_b) {
  char* aa = (char*) a;
  char* bb = (char*) b;
  boolean equal = size_a==size_b;
  int i;
  for(i = 0; (i < size_a) && equal; i++) {
    equal = equal && aa[i]==bb[i];
  }
  return equal;
}

boolean __assert_equals_cmp(void* a, void* b, const int *(func)(void*, void*)) {
  return (func(a, b) == 0);
}

void __increase_error_count() {
  __error_count__++;
}

void __increase_pending_count() {
  __pending_count__++;
}

int __print_tests_summary(int tests) {
  int non_passing = __error_count__ + __pending_count__;
  if(non_passing > 0) {
    fprintf(stdout,"\n");
  }
	
  if(__error_count__ == 0) {
    fprintf(stdout, "OK:\t\t %d Tests successful!\n", tests-non_passing);
    if(__pending_count__ > 0) {
    	fprintf(stdout, "Pending:\t %d test(s) pending...\n", __pending_count__);
    }
  } else {
  	fprintf(stdout, "FAILURES:\t %d test(s) FAILED.\n", __error_count__);
  	if(__pending_count__ > 0) {
    	fprintf(stdout, "Pending:\t %d test(s) Pending.\n", __pending_count__);
    }
    fprintf(stdout, "ok:\t\t %d test(s) succesful.\n", tests-non_passing);
  }
  
  fprintf(stdout, "--------------------------------------\n");
  fprintf(stdout, "TOTAL:\t\t %d test(s)\n", tests);

  return __error_count__;
}
