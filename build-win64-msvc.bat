call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

CD /D %~dp0
RMDIR /S /Q build
MKDIR build
CD build
meson --buildtype "release" --prefix %cd%/.. --bindir "bin" --libdir "lib"

ninja
ninja install