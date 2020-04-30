cargo build --target="i686-pc-windows-msvc"

IF NOT EXIST "..\out" mkdir ..\out
XCOPY /y .\target\i686-pc-windows-msvc\debug\rust_app_cpp_dll.exe ..\out\
XCOPY /y .\target\i686-pc-windows-msvc\debug\rust_app_cpp_dll.pdb ..\out\