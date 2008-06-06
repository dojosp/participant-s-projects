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
  int result_color = COLOR_GREEN;
  if(non_passing > 0) {
    fprintf(stdout,"\n");
  }
	
  if(__error_count__ == 0) {
    fprintf(stdout, "%s %d Tests successful!\n", colorize("OK:\t\t", COLOR_BACKGROUND), tests-non_passing);
    if(__pending_count__ > 0) {
    	fprintf(stdout, "%s %d test(s) pending...\n", colorize("Pending:\t", COLOR_YELLOW), __pending_count__);
    }
  } else {
  	fprintf(stdout, "%s %d test(s) FAILED.\n", colorize("FAILURES:\t", COLOR_RED), __error_count__);
  	if(__pending_count__ > 0) {
    	fprintf(stdout, "%s %d test(s) Pending.\n", colorize("Pending:\t", COLOR_BACKGROUND), __pending_count__);
    }
    fprintf(stdout, "%s %d test(s) succesful.\n", colorize("ok:\t\t", COLOR_BACKGROUND), tests-non_passing);
  }
  
  fprintf(stdout, "--------------------------------------\n");
  if(__error_count__ > 0) {
  	result_color = COLOR_RED;
  } else if(__pending_count__ > 0) {
  	result_color = COLOR_YELLOW;
  }
  
  fprintf(stdout, "%s %d test(s)\n", colorize("TOTAL:\t\t", result_color), tests);

  return __error_count__;
}

void set_colorize_input(boolean colors) {
	render_with_colors = colors;
}

char* colorize(char* string, int color) {
	if(render_with_colors) {
		sprintf(colorized, "%c[0;30;%dm%s%c[0m", 0x1B, color, string, 0x1B);
		return colorized;
	}
	
	return string;
}
