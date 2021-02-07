@echo on

:: Als erstes das Projektverzeichnis festlegen.
:: Unterverzeichnisse sind app, config, data, protk, text
set JLINK_HOME=%~dp0

:: Enter some creo path options
:: C:\Program Files\PTC Creo 2.0 M150\Creo 2.0\Common Files\M150\x86e_win64\text
:: """""""""""""""""""""""""""""""""""""""""""              °°°° """"""""""<-MACHINE_TYPE
:: CREO_LOADPOINT                                 DATECODE-/                                                             
::
set CREO_LOADPOINT=C:\Program Files\PTC Creo 2.0 M150\Creo 2.0
set DATECODE=M150
set MACHINE_TYPE=x86e_win64

:: set JLINK_JAVA_HOME=%CREO_LOADPOINT%\Common Files\%DATECODE%\%MACHINE_TYPE%\obj\JRE :: 1.8.0_60
set JLINK_JAVA_HOME=D:\SDK\Java\jdk1.8.0_74_x64\jre


:: Add all you need to the CLASSPATH variable
:: set CLASSPATH=%CLASSPATH%;%JLINK_TEST_HOME%
:: set CLASSPATH=%JLINK_HOME%
::set CLASSPATH=%CLASSPATH%;%JLINK_HOME%
::set CLASSPATH=%CLASSPATH%;%JLINK_JAVA_HOME%\lib

:: set PRO_LANG=english

:: build creo config
copy %JLINK_HOME%\config\config_jlink.pro + %JLINK_HOME%\config\config_oloid-design.pro  %JLINK_HOME%\config.pro


del %JLINK_HOME%\trail.txt.* /q
del %JLINK_HOME%\std.out /q

xcopy /Y /E %JLINK_HOME%\..\bin\com\* %JLINK_HOME%\app\com\

::## Creo staten ##
:: Es ist notwendig, in das Verzeichnis der Batch-Datei zu wechseln, bevor Creo gestartet wird.
:: Creo schaut im Startverzeichnis nach der config.pro und nutz dies auch als Arbeitsverzeichnis.

:: Laufwerk wechseln auf dem das Projektverzeichnis liegt 
%JLINK_HOME:~0,2%

:: In das Projektverzeichnis wechseln 
cd %JLINK_HOME%

:: "C:\Program Files\PTC Creo 2.0 M150\Creo 2.0\Parametric\bin\parametric.exe" >> ./out1.txt 2> ./out2.txt
:: start "" "%CREO_LOADPOINT%\Parametric\bin\parametric.exe" .\trail_oloid-design.txt %*
start "" "%CREO_LOADPOINT%\Parametric\bin\parametric.exe" %*
