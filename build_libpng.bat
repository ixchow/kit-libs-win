cd lpng1637
rmdir /S /Q ..\out\libpng
mkdir ..\out\libpng
nmake -f scripts\makefile.vcwin32
copy libpng.lib ..\out\libpng
copy png.h ..\out\libpng
copy pngconf.h ..\out\libpng
copy pnglibconf.h ..\out\libpng
cd ..
rmdir /S /Q lpng1637
git checkout lpng1637
