import XMonad
import Data.Monoid
import System.Exit

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Util.SpawnOnce

import XMonad.Layout.Spacing

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myTerminal :: String
myTerminal = "alacritty"

myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

myClickJustFocuses :: Bool
myClickJustFocuses = False

myBorderWidth = 0

myModMask = mod4Mask

myWorkspaces = ["1","2","3","4","5","6","7","8","9"]

myNormalBorderColor :: String
myNormalBorderColor  = "#000000"

myFocusedBorderColor :: String
myFocusedBorderColor = "#000000"

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
  [ ((modm              , xK_Return), spawn $ XMonad.terminal conf)
  , ((modm              , xK_d     ), spawn "dmenu_run")
  , ((modm .|. shiftMask, xK_q     ), kill)
  , ((modm              , xK_Tab   ), windows W.focusDown)
  , ((modm .|. shiftMask, xK_r     ), spawn "xmonad --recompile; xmonad --restart")
  , ((modm .|. shiftMask, xK_e     ), io exitSuccess)
  ]
  ++
  [ ( (m .|. modm, k), windows $ f i)
    | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
    , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
  ]

myMouseBindings :: XConfig l -> M.Map (KeyMask, Button) (Window -> X ())
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList []

myLayout = spacingRaw True (Border 10 10 10 10) True (Border 10 10 10 10) True $ tiled ||| Mirror tiled ||| Full
  where
   tiled   = Tall nmaster delta ratio
   nmaster = 1
   ratio   = 1/2
   delta   = 3/100

myManageHook = composeAll []

myEventHook = mempty

myLogHook = return ()

myStartupHook = do
  spawnOnce "redshift &"

main = xmonad defaults

defaults = def 
  { terminal           = myTerminal
  , focusFollowsMouse  = myFocusFollowsMouse
  , clickJustFocuses   = myClickJustFocuses
  , borderWidth        = myBorderWidth
  , modMask            = myModMask
  , workspaces         = myWorkspaces
  , normalBorderColor  = myNormalBorderColor
  , focusedBorderColor = myFocusedBorderColor
  , keys               = myKeys
  , mouseBindings      = myMouseBindings
  , layoutHook         = myLayout
  , manageHook         = myManageHook
  , handleEventHook    = myEventHook
  , logHook            = myLogHook
  , startupHook        = myStartupHook
  }
