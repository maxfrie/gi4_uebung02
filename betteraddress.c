#include <stdlib.h>

struct bigone
{
	int avalue;
	int anothervalue;
	short shortvalue;
	short sarray[2];
	char index;
	char space;
};

int main(int argc, char* argv[], char* envp[])
{
	struct bigone tstruct;

	tstruct.index = 7;
	tstruct.avalue = -512;
	tstruct.shortvalue = 127;
	tstruct.space = 32;
	tstruct.sarray[0] = 0x123;
	tstruct.sarray[1] = 0x456;
	tstruct.anothervalue = 4096;

	return 0;
}
