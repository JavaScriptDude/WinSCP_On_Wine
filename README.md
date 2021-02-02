# WinSCP_On_Wine
How to install WinSCP on Wine in Linux, or other OS's that support Wine.

1)  Download files to a local folder like $HOME/apps/winscp:
* winscp.sh
* WinSCP.desktop
* WinSCP-Logo.png
* `cd` to this directory in a terminal window for the balance of steps
* Make winscp.sh executable:
```chmod a+x winscp.sh```

2) Installation of WinSCP:
```
export WINEARCH=win64; export WINEPREFIX=$HOME/.wine_winscp
mkdir -p $WINEPREFIX/drive_c/apps/winscp
```
3) Initialize WINEPREFIX `% winecfg`
(no changes needed) Click ok

4) Deploy WinSCP files
* Download `Portable executables` version of WinSCP from https://winscp.net
** CLI Trick to open in default file manager `% xdg-open $WINEPREFIX/drive_c/apps/winscp`
* Manually copy over files over to $WINEPREFIX/drive_c/apps/winscp

5) *nix executable deployment:
* sudo ln -s `pwd`/winscp.sh /usr/bin/winscp
* To verify, try running the following from commandline: `winscp`
* * This should launch winscp GUI

6) Desktop Installation:
```
cp ./WinSCP-Logo.png $HOME/.local/share/icons
desktop-file-install --dir=$HOME/.local/share/applications ./WinSCP.desktop 
```
* That should be it, If you don't see the WinSCP key when you hit the Super key, toggle the Super key another time and that should do it
