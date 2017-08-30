
cd SDL2\VisualC
rem msbuild SDL.sln /p:PlatformToolset=v140,Configuration=Release /t:SDL2,SDL2main
cd ..\..
rmdir /S/Q out\lib\SDL2.lib out\lib\SDL2main.lib out\include\SDL2 out\dist\SDL2.dll out\dist\README-SDL.txt
mkdir out\lib
copy SDL2\VisualC\Win32\Release\SDL2.lib out\lib
copy SDL2\VisualC\Win32\Release\SDL2main.lib out\lib
mkdir out\dist
copy SDL2\VisualC\Win32\Release\SDL2.dll out\dist
copy SDL2\README-SDL.txt out\dist
mkdir out\include\SDL2
xcopy /E SDL2\include out\include\SDL2
