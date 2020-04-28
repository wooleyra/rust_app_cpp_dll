CD .\cpp_dll
CALL .\build.bat
CD ..\

IF NOT EXIST ".\out" mkdir .\out
XCOPY /y .\cpp_dll\bin\cpplib.dll .\out\

CD .\rust_app
CALL .\build.bat
CD ..\

IF NOT EXIST ".\out" mkdir .\out
XCOPY /y .\rust_app\target\i686-pc-windows-msvc\debug\rust_app_cpp_dll.exe .\out\