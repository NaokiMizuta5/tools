@echo off
  
set /p filename="input file name"
set /p extension="input extension"
set /p number="input the number of files"
  
setlocal enabledelayedexpansion
  
for /l %%i in (1,1,%number%) do (
  set num=0%%i
  set num=!num:~-2,2!
  type nul > %filename%!num!.!extension!
)
  
endlocal