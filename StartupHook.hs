import XMonad
import XMonad.Util.SpawnOnce

module StartupHook where

MyStartupHook :: X ()
MyStartupHook = do
  spawnOnce "picom -b"                    
  spawnOnce "feh --bg-scale /home/ruzen42/wallpaper"                    


