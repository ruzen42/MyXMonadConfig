module Config.Keys where

import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import Config.Settings

myKeys :: [(String, X ())]
myKeys =
    [ ("M4-r", spawn appsStarter)
    , ("M4-S-t", spawn term)
    , ("M4-S-r", spawn restartXMonad)
    , ("<Print>", spawn flameshot)
    , ("M4-b", spawn browser)
    , ("M4-S-x", spawn telegram)
    ]
