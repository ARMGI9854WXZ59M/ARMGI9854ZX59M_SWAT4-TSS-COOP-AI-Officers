@echo off 
REM Tell the user that we are running the mod 
echo Launching moddista 
REM Run Swat4.exe from inside <MOD_DIR>\System, so that the 
REM game uses the mod's initialisation files and settings 
cd .\System\
..\..\ContentExpansion\System\Swat4X.exe  -nointro
REM Tell the user that the game has exited 
echo moddista has exited 