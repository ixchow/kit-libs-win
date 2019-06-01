cd zlib-1.2.11
rmdir /S /Q ..\out\zlib
mkdir ..\out\zlib
nmake -f win32\Makefile.msc
copy zconf.h ..\out\zlib
copy zlib.h ..\out\zlib
copy zlib.lib ..\out\zlib
copy zlib.pdb ..\out\zlib
cd ..
rmdir /S /Q zlib-1.2.11
git checkout zlib-1.2.11
