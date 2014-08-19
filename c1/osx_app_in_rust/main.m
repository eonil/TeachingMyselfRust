//
//  submain.m
//  c1
//
//  Created by Hoon H. on 14/8/20.
//
//

#import "main.h"
#import "ApplicationController.h"

static int	argc1;
static char const** argv1;


int main(int argc, char const** argv)
{
	argc1	=	argc;
	argv1	=	argv;
	
	return	submain(argc, argv, deepermain);
}




void deepermain()
{
	@autoreleasepool
	{
		ApplicationController*	ac1	=	[[ApplicationController alloc] init];
		[[NSApplication sharedApplication] setDelegate:ac1];
		NSApplicationMain(argc1, argv1);
	}
}
