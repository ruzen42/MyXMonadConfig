import XMonad
import Config.Settings
import Config.Keys
import Config.Layouts
import Config.Startup
import XMonad.Util.EZConfig (additionalKeysP)

main :: IO ()
main = xmonad $ def
    { modMask            = mod4Mask
    , borderWidth        = 3
    , normalBorderColor  = "#414868"
    , focusedBorderColor = "#7aa2f7"
    , startupHook 	 = myStartupHook
    , layoutHook         = myLayout
    } `additionalKeysP` myKeys
