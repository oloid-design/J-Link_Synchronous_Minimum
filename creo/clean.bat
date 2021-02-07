@echo on

:: Als erstes das Projektverzeichnis festlegen.
:: Unterverzeichnisse sind app, config, data, protk, text
set JLINK_HOME=%~dp0

del %JLINK_HOME%\trail.txt.* /q
del %JLINK_HOME%\config.pro /q
del %JLINK_HOME%\std.out /q
del %JLINK_HOME%\traceback.log /q
rd %JLINK_HOME%\app /s /q
