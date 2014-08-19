#include <stdio.h>

extern void test1();

void print1()
{
	printf("%s", "OK!");
}


int main(int argc, char** argv)
{
	test1();
	return 0;
}
