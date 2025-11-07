module Config.Startup where

import XMonad
import XMonad.Util.SpawnOnce
import Control.Monad (mapM_)
import Data.Text

myStartupCommands :: [String]
myStartupCommands =
    [ "picom -b"
    , "feh --bg-scale /home/ruzen42/background.png"
    , "xrandr --output DisplayPort-1 --rate 165"
    , "alacritty"
    ]

myStartupHook :: X ()
myStartupHook = mapM_ spawnOnce myStartupCommands
