//
//  submain.h
//  c1
//
//  Created by Hoon H. on 14/8/20.
//
//


int main(int argc, char const** argv);

extern int submain(int argc, char const** argv, void(*deepermain)(void));

void deepermain();
