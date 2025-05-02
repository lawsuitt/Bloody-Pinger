@echo off
chcp 65001
mode 117,29
:ippinger
cls
color 4
echo.
echo  WELCOME TO BLOODY PINGER BY LAWSUIT!
echo.
echo.
echo  - Owner/Developer/Partner -
echo.
echo  [TikTok] lawsuit__
echo  [Discord] .lawsuit.
echo.
echo  [Server] https://discord.gg/wVyVEVjRgr
echo  [Discord] mcnt
echo.
echo.
echo.
echo 1 (fastest)    -     2 (medium)     -     3 (slowest)
echo.
set /p SPEED= [37m[root@[31m.lawsuit.[37m] Choose Ping Speed : (1) (2) (3) :
if %SPEED% == 1 goto next
if %SPEED% == 2 goto next
if %SPEED% == 3 goto next
if %SPEED% == nul goto bad
:bad
echo.
echo [37m[root@[31mINFO[37m] ERROR ! Choose Ping Speed ---> (1, 2, 3)
timeout /t 2 /nobreak > nul
goto ippinger
echo.
:next
echo.
echo.
set /p IP= [37m[root@[31m.lawsuit.[37m] Please Insert an IP Here: 
echo.
:ipping
PING -n %SPEED% %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto downed
IF NOT ERRORLEVEL 1 goto connected
:connected
echo [37m[root@[31m.lawsuit.[37m] : [102m CONNECTED [0m to [[92m %IP% [0m] [[92m+[0m] Status : [102m ONLINE [0m BY .lawsuit. on DISCORD!
echo.
goto ipping
:downed
echo [37m[root@[31m.lawsuit.[37m] : [41m CONNECTED [0m to [[31m %IP% [0m] [[31m-[0m] Status : [41m OFFLINE [0m BY .lawsuit. on DISCORD!
echo.
goto ipping
