README
======



Trials to practice Rust code.







Curernt Status
--------------
Linking itself is working well.

-	`a1` --- Calling Rust function from C program works for simple signatures.
-	`a2` --- Spawning a new Rust task doesn't work. It crashes.
-	`a3` --- `a2` with no `println` or `printf!` calling.

It seems to be better to use Rust as the driver program compiler, and linking
any other C/C++ libraries into there.

-	`b1` --- Compiling a host program for iOS. Doesn't work. It needs cross-compiler, and the cross-compiler is not shipped with default Homebrew distribution.




Helpful Links
-------------
-	https://github.com/rust-lang/rust/wiki/Doc-building-for-ios
-	http://smallcultfollowing.com/babysteps/blog/2013/02/22/interfacing-with-c-functions-in-rust/
-	https://github.com/shilgapira/ObjCrust
