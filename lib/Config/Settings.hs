module Config.Settings where

term, appsStarter, restartXMonad, browser, flameshot :: String
term = "sakura"
appsStarter = "rofi -theme ~/.everforest.rasi -show drun"
restartXMonad = "xmonad --recompile && xmonad --restart"
browser = "firefox"
flameshot = "flameshot gui"
telegram = "nix-shell -p " ++ name ++ " --run " ++ name
  where
    name = "telegram-desktop"
  

spacingSize :: Int
spacingSize = 2
