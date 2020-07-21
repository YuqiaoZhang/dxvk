call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"

CD /D %~dp0
RMDIR /S /Q build32
MKDIR build32
CD build32
meson --buildtype "release" --prefix %cd%/.. --bindir "bin32" --libdir "lib32"

ninja
ninja install