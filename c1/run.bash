

echo `pwd`
cd "$SRCROOT"

source ~/.profile
rustc --codegen target-cpu=x86-64 -g --crate-type="staticlib" -o ./build/submain.a submain.rs
exit 0







rm -rf build

xcodebuild
lipo -info build/Release/*.a

#rustc main.rs --codegen target-cpu=x86-64 -g -o ./build/out -Lbuild/Release -losx_app_in_rust
rustc --codegen target-cpu=x86-64 -g --crate-type="staticlib" -o ./build/submain.a submain.rs
#clang ./build/submain.a ./build/Release/libosx_app_in_rust.a -o ./build/out -framework Foundation -framework AppKit -framework Cocoa
#clang --all_load ./build/submain.a ./build/Release/libosx_app_in_rust.a -o ./build/all.a
#libtool --all_load -static -o ./build/all.a ./build/submain.a ./build/Release/libosx_app_in_rust.a