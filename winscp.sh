#! /bin/sh
export WINEARCH=win64 
export WINEPREFIX=${HOME}/.wine_winscp 
APP_PATH=${WINEPREFIX}/drive_c/apps/winscp
wine ${APP_PATH}/WinSCP.exe
