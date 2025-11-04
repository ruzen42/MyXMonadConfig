module Config.Settings where

term, appsStarter, restartXMonad, browser, flameshot :: String
term = "alacritty"
appsStarter = "rofi -theme /home/ruzen42/.config/tokyonight.rasi -show drun"
restartXMonad = "xmonad --recompile && xmonad --restart"
browser = "firefox"
flameshot = "flameshot gui"
telegram = "telegram-desktop"


spacingSize :: Int
spacingSize = 5
