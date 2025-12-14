module Config.Startup where

import XMonad
import XMonad.Util.SpawnOnce
import Control.Monad (mapM_)
import Data.Text

myStartupCommands :: [String]
myStartupCommands =
    [ "picom -b"
    , "feh --bg-scale /home/ruzen42/background.png"
    , "alacritty"
    , "xrandr --output DisplayPort-1 --mode 1920x1080 --rate 165"
    ]

myStartupHook :: X ()
myStartupHook = mapM_ spawnOnce myStartupCommands
