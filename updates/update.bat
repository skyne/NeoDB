@echo off
cls
SET /a error=0
SET /a nofile=1
echo   ####################################################
echo   #==============  NeoDB Auto Updater  ==============#
echo   ####################################################
echo.
echo Into witch database do you want to import?
echo Opportunities: world, characters, realmd
:dbnev
echo.
SET /p type=DB nev:
if %type%==world SET db=*world*.sql
if %type%==characters SET db=*characters*.sql
if %type%==realmd SET db=*realmd*.sql
for %%a in (%db%) do (
   SET /a nofile=0
   echo %%a -- IMPORT IS IN PROCESS!
   mysql --user=neo --password=neo "%type%" < %%a
   if errorlevel 1 (
      echo.
      echo %%a -- FAILED!
      echo.
      SET /a error=error+1
   )else (
      echo %%a -- DONE!
      echo.
   )
)
echo.
echo.
if %nofile%==1 (
   echo Files are not found.
   goto dbnev
)
if %error% == 0 (
   echo All operations are done.
   echo.
)else (
   echo Some operations are unsuccessful.
   echo ERRORS NUMBER: %error%
   echo.
)
pause
exit