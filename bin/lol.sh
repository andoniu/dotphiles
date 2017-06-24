#!/bin/sh

antimicro --tray --hidden &

export WINEPREFIX=~/.PlayOnLinux/wineprefix/LeagueOfLegends/
wine ~/.PlayOnLinux/wineprefix/LeagueOfLegends/drive_c/Riot\ Games/League\ of\ Legends/lol.launcher.exe
