module Config.Layouts where

import XMonad
import XMonad.Layout.Spacing
import XMonad.Layout.SimpleFloat
import XMonad.Layout.NoBorders
import Config.Settings

myLayout = spacing spacingSize $ tiledLayout ||| Mirror tiled ||| monocle ||| floatLayout
  where
    tiledLayout  = Tall nmaster delta ratio
    Mirror tiled = Mirror (Tall nmaster delta ratio)
    monocle      = noBorders (Full)
    floatLayout  = noBorders simpleFloat
    nmaster      = 1
    delta        = 3/100
    ratio        = 1/2
