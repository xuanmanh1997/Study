SET NEWLINE=^& echo.

attrib -r %WINDIR%\system32\drivers\etc\hosts   

FIND /C /I "cdn.kmplayer.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1		cdn.kmplayer.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "cdn.pandora.tv" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1		cdn.pandora.tv>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "log.kmplayer.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1		log.kmplayer.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "player.kmpmedia.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1		player.kmpmedia.net>>%WINDIR%\system32\drivers\etc\hosts

attrib +r %WINDIR%\system32\drivers\etc\hosts   

CLS
ECHO.
ECHO Provided by: P30download Group - www.p30download.com
ECHO.
