import XMonad
import Config.Settings
import Config.Keys
import Config.Layouts
import Config.Startup
import XMonad.Util.EZConfig (additionalKeysP)

main :: IO ()
main = xmonad $ def
    { modMask = mod4Mask
    , borderWidth = 2
    , normalBorderColor = "#3b4252"
    , focusedBorderColor = "#A7C080"
    , startupHook = myStartupHook
    , layoutHook = myLayout
    } `additionalKeysP` myKeys
