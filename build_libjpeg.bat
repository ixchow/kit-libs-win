cd libjpeg-turbo
rmdir /S /Q ..\out\libjpeg
mkdir ..\out\libjpeg
rmdir /S /Q build
mkdir build
cd build
set path=C:\Program Files\NASM;%path%
cmake -G"NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DWITH_CRT_DLL=1 ..
nmake
copy jpeg-static.lib ..\..\out\libjpeg
copy ..\jpeglib.h ..\..\out\libjpeg
copy ..\jmorecfg.h ..\..\out\libjpeg
copy ..\jerror.h ..\..\out\libjpeg
copy jconfig.h ..\..\out\libjpeg
cd ..
rmdir /S /Q build
cd ..
