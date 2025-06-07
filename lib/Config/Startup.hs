module Config.Startup where

import XMonad
import XMonad.Util.SpawnOnce

myStartupHook :: X ()
myStartupHook = do
  spawnOnce "/usr/bin/picom -b"
  spawnOnce "feh --bg-scale /home/ruzen42/wallpaper"
