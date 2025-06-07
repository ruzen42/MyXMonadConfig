import XMonad
import XMonad.Layout.Spacing
import XMonad.Util.EZConfig (additionalKeysP)  
import StartupHook

main :: IO ()
main = xmonad myConfig

term, appsStarter, restartXMonad, browser :: String
term             = "sakura"  
appsStarter      = "rofi -theme ~/.everforest.rasi -show drun"
restartXMonad    = "xmonad --recompile && xmonad --restart"
browser          = "firefox" 
flameshot        = "flameshot gui" 

spacingSize :: Int
spacingSize      = 2

myConfig = def
    { modMask            = mod4Mask
    , borderWidth        = 2 
    , startupHook        = myStartupHook
    , normalBorderColor  = "#3b4252"         
    , focusedBorderColor = "#A7C080"  
    , layoutHook         = myLayout
    } `additionalKeysP`
    [ ("M4-r",    spawn appsStarter),  
      ("M4-S-t",  spawn term),               
      ("M4-S-r",  spawn restartXMonad),
      ("<Print>", spawn flameshot),
      ("M4-b",    spawn browser)               
    ]

myLayout = spacing spacingSize $ layoutHook def  
