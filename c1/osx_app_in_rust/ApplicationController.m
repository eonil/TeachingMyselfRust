//
//  ApplicationController.m
//  c1
//
//  Created by Hoon H. on 14/8/20.
//
//

#import "ApplicationController.h"

extern void test22();

@implementation ApplicationController
{
	NSWindow*	w1;
}
- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
	w1	=	[[NSWindow alloc] init];
	[w1 setFrame:CGRectMake(0, 0, 100, 100) display:YES];
	[w1 orderFront:nil];
	
//	NSBeep();
//	[[NSAlert alertWithMessageText:@"OBJ HELLO!" defaultButton:@"OK" alternateButton:nil otherButton:nil informativeTextWithFormat:@"AAA"] showsHelp];
	
	printf("%s", "OBJC hello");
	test22();
}
@end
