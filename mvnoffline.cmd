@echo off
SET MAVEN_REPO=%USERPROFILE%\.m2\repository

echo Maven repository: %MAVEN_REPO%

rd /S /Q repository

echo Copying artifacts from %MAVEN_REPO%
xcopy /Y /E %MAVEN_REPOS%\*.* .\repostory\*.*


rem TODO: mvn dependency:go-offline -Dmaven.repo.local=.\repository


