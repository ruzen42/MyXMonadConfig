module Config.Settings where

term, appsStarter, restartXMonad, browser, flameshot :: String
term = "sakura"
appsStarter = "rofi -theme ~/.everforest.rasi -show drun"
restartXMonad = "xmonad --recompile && xmonad --restart"
browser = "firefox"
flameshot = "flameshot gui"

spacingSize :: Int
spacingSize = 2
