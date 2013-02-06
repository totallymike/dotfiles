import Data.Ratio ((%))
import XMonad
import XMonad.Actions.GridSelect
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.ManageHook
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import System.IO

import qualified XMonad.StackSet as W

main = do
  xmproc <- spawnPipe "/home/mwestbom/.cabal/bin/xmobar"
  xmonad $ defaultConfig
    { manageHook = manageDocks <+> myManageHook
    , layoutHook = avoidStruts  $  smartBorders (layoutHook defaultConfig)
    , logHook = dynamicLogWithPP xmobarPP
                    { ppOutput = hPutStrLn xmproc
                    , ppTitle = xmobarColor "green" "" . shorten 50
                    }
    , startupHook = setWMName "LG3D"
    , terminal = "urxvtc"
    , workspaces = myWorkspaces
    } `additionalKeysP`
    [ ("M-g", goToSelected myGSConfig)
    ]

myGSConfig = defaultGSConfig
  { gs_font = "xft:Source Code Pro:size=10"
  }

myManageHook = composeAll
  [ className =? "XSassm"    --> doHideIgnore
  , className =? "SAS"       --> doF (W.shift "sas")
  ]
  <+> manageHook defaultConfig

myWorkspaces = ["term", "web", "notes", "sas"] ++ map show [5..9]
