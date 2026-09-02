@echo off
color 2
title L2JNET IL 3.0:  GameServer Console
:start
echo Initializing L2JNET IL 3.0 GameServer.
echo WWW.L2JNET.COM.BR / WWW.L2JNET.COM.BR
echo.
SET OLDCLASSPATH=%CLASSPATH%
call setenv.bat
REM ########################################################################
REM # You need to set here your JDK/JRE params in case of x64 bits System. #
REM # Remove the "REM" after set PATH variable                             #
REM # If you're not a x64 system user just leave                           # 
REM ########################################################################
set PATH=C:\Program Files\Eclipse Adoptium\jre-8.0.504.1-hotspot\bin;%PATH%

REM -------------------------------------
REM Default parameters for a basic server.
java -Dfile.encoding=UTF-8 -Xms1024m -Xmx2048m net.sf.l2j.gameserver.GameServer
REM
REM For debug purpose (for devs), use this :  
REM java -Dfile.encoding=UTF-8 -Xmx512m -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=7456 net.sf.l2j.gameserver.GameServer   
REM If you have a big server and lots of memory, you could experiment for example with
REM java -server -Dfile.encoding=UTF-8 -Xmx1536m -Xms1024m -Xmn512m -XX:PermSize=256m -XX:SurvivorRatio=8 -Xnoclassgc -XX:+AggressiveOpts
REM -------------------------------------

SET CLASSPATH=%OLDCLASSPATH%

if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Administrator Restarted ...
echo.
goto start
:error
echo.
echo GameServer Terminated Abnormaly, Please Verify Your Files.
echo.
:end
echo.
echo Server Terminated.
echo.
pause