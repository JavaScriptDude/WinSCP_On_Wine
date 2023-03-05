# WinSCP_On_Wine
How to install WinSCP on Wine in Linux, or other OS's that support Wine.

#### 1)  Download files to a local folder like /tmp/winscp_install:
* winscp.sh
* WinSCP.desktop
* WinSCP-Logo.png
* Note: This folder will need to r
* `cd` to this directory in a terminal window for the balance of steps


#### 2) Installation of WinSCP:
```
export WINEARCH=win64; export WINEPREFIX=$HOME/.wine_winscp
mkdir -p $WINEPREFIX/drive_c/apps/winscp
```


#### 3) Initialize WINEPREFIX `% winecfg`
(no changes needed) Click ok


#### 4) Deploy WinSCP files
* Download `Portable executables` version of WinSCP from https://winscp.net
  * CLI Trick to open in default file manager `% xdg-open $WINEPREFIX/drive_c/apps/winscp`
* Manually copy over files over to $WINEPREFIX/drive_c/apps/winscp


#### 5) *nix executable deployment:
```
sudo cp ./winscp.sh /usr/local/bin/winscp
sudo chmod a+x /usr/local/bin/winscp
```
To verify, try running the following from commandline: `winscp`
* This should launch winscp GUI


#### 6) Desktop Installation:
```
mkdir -p ~/.local/share/icons && cp ./WinSCP-Logo.png ~/.local/share/icons/
desktop-file-install --dir=~/.local/share/applications ./WinSCP.desktop
```

That should be it, If you don't see the WinSCP key when you hit the Super key, toggle the Super key another time and that should do it
