@echo off
color 2
title L2JNET IL 3.0:  Login Server Console
:start
echo Initializing L2JNET IL 3.0 LoginServer.
echo WWW.L2JNET.COM.BR / WWW.L2JNET.COM.BR

SET OLDCLASSPATH=%CLASSPATH%
call setenv.bat

REM ########################################################################
REM # You need to set here your JDK/JRE params in case of x64 bits System. #
REM # Remove the "REM" after set PATH variable                             #
REM # If you're not a x64 system user just leave                           # 
REM ########################################################################
set PATH=C:\Program Files\Eclipse Adoptium\jre-8.0.504.1-hotspot\bin;%PATH%

java -Dfile.encoding=UTF-8 -Xmx64m net.sf.l2j.loginserver.L2LoginServer

SET CLASSPATH=%OLDCLASSPATH%

if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Admin Restart ...
echo.
goto start
:error
echo.
echo LoginServer terminated abnormaly
echo.
:end
echo.
echo LoginServer terminated
echo.
pause
