module Config.Startup where

import XMonad
import XMonad.Util.SpawnOnce
import Control.Monad (mapM_) 
import Data.Text

myStartupCommands :: [String]
myStartupCommands =
    [ "picom -b"
    , "feh --bg-scale /home/ruzen42/background.png"
    ]

myStartupHook :: X ()
<<<<<<< HEAD
myStartupHook = mapM_ spawnOnce myStartupCommands
=======
myStartupHook = do
	spawnOnce "picom -b"
	spawnOnce "feh --bg-scale /home/ruzen42/background.png"
	spawnOnce "taffybar"
	spawnOnce "xrandr --output DP-2 --rate 165"
>>>>>>> 181918d (fix)
