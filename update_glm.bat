cd glm
git pull
cd ..
rmdir /S /Q out\include\glm
mkdir out\include\glm
xcopy /E glm\glm out\include\glm
