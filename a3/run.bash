rm -rf ./Build
mkdir ./Build

rustc -g a.rs --crate-type=staticlib -o ./Build/rust-stuffs.a
clang b.c ./Build/rust-stuffs.a -o Build/out

cd Build
./out
