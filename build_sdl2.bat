set sdldir=SDL2-2.0.7

cd %sdldir%\VisualC
msbuild SDL.sln /p:PlatformToolset=v141,Configuration=Release,Platform=x64 /t:SDL2,SDL2main
cd ..\..
rmdir /S/Q out\lib\SDL2.lib out\lib\SDL2main.lib out\include\SDL2 out\dist\SDL2.dll out\dist\README-SDL.txt
mkdir out\lib
copy %sdldir%\VisualC\x64\Release\SDL2.lib out\lib
copy %sdldir%\VisualC\x64\Release\SDL2main.lib out\lib
mkdir out\dist
copy %sdldir%\VisualC\x64\Release\SDL2.dll out\dist
copy %sdldir%\README-SDL.txt out\dist
mkdir out\include\SDL2
xcopy /E %sdldir%\include out\include\SDL2
