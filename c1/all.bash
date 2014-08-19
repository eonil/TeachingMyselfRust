
rm -rf ./build

xcodebuild -project c1.xcodeproj -target osx_app_in_rust

rustc --codegen target-cpu=x86-64 -g --crate-type="staticlib" -o ./build/submain.a submain.rs

xcodebuild -project c1.xcodeproj -target tester1

#lldb ./build/Release/tester1.app/Contents/MacOS/tester1

open ./build/Release/tester1.app