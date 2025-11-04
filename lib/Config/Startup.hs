module Config.Startup where

import XMonad
import XMonad.Util.SpawnOnce

myStartupHook :: X ()
myStartupHook = do
	spawnOnce "picom -b"
	spawnOnce "feh --bg-scale /home/ruzen42/background.png"
	spawnOnce "xrandr --output DP-2 --rate 165"
