#@echo off
CALL "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x86
SET compilerflags=/Od /Zi /EHsc /std:c++latest /I include
SET linkerflags=/DLL /OUT:bin\cpplib.dll "User32.lib"
cl.exe %compilerflags% src\*.cpp /link %linkerflags%
DEL bin\*.ilk *.obj *.pdb