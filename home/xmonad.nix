{pkgs, ...}: {
  home.file = {
    ".xinitrc".text = ''
      #!/bin/bash
      exec xmonad
    '';
  };

  xsession.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    config = pkgs.writeText "xmonad.hs" ''
      import qualified Data.Map              as M
      import           Data.Monoid
      import           System.Exit
      import           XMonad
      import qualified XMonad.StackSet       as W

      import XMonad.Actions.Navigation2D

      import XMonad.Hooks.EwmhDesktops

      import XMonad.Layout.BinarySpacePartition
      import XMonad.Layout.Spacing
      import XMonad.Layout.BorderResize

      import XMonad.Util.EZConfig
      import XMonad.Util.SpawnOnce

      myTerminal :: String
      myTerminal = "alacritty"

      myFocusFollowsMouse :: Bool
      myFocusFollowsMouse = True

      myClickJustFocuses :: Bool
      myClickJustFocuses = False

      myBorderWidth = 0

      myModMask = mod4Mask

      myWorkspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

      myMouseBindings :: XConfig l -> M.Map (KeyMask, Button) (Window -> X ())
      myMouseBindings (XConfig {XMonad.modMask = modm}) =
        M.fromList
          [ ( (modm, button1),
              \w ->
                focus w
                  >> mouseMoveWindow w
                  >> windows W.shiftMaster
            )
          , ( (modm, button3),
              \w ->
                focus w
                  >> mouseResizeWindow w
                  >> windows W.shiftMaster
            )
          ]

      myLayout = emptyBSP

      myManageHook = composeAll []

      myEventHook = mempty

      myLogHook = return ()

      myStartupHook = do
        spawnOnce "xsetroot -cursor_name left_ptr"
        spawnOnce "redshift &"

      main = xmonad $ withNavigation2DConfig def $ ewmhFullscreen $ ewmh defaults

      defaults =
        def
          { terminal          = myTerminal
          , focusFollowsMouse = myFocusFollowsMouse
          , clickJustFocuses  = myClickJustFocuses
          , borderWidth       = myBorderWidth
          , modMask           = myModMask
          , workspaces        = myWorkspaces
          , mouseBindings     = myMouseBindings
          , layoutHook        = myLayout
          , manageHook        = myManageHook
          , handleEventHook   = myEventHook
          , logHook           = myLogHook
          , startupHook       = myStartupHook
          }
          `additionalKeysP`
            -- xmonad Basic
            [ ("M-S-r", spawn "xmonad --recompile; xmonad --restart")
            , ("M-S-q", kill)
            , ("M-S-e", io exitSuccess)

            -- rofi
            , ("M-d", spawn "rofi -show drun")
            , ("M-w", spawn "rofi -show window")

            -- terminal
            , ("M-<Return>", spawn "alacritty")

            -- tile the window
            , ("M-t", withFocused $ windows . W.sink)

            -- switch workspace
            , ("M-1", windows $ W.greedyView $ head myWorkspaces)
            , ("M-2", windows $ W.greedyView $ myWorkspaces !! 1)
            , ("M-3", windows $ W.greedyView $ myWorkspaces !! 2)
            , ("M-4", windows $ W.greedyView $ myWorkspaces !! 3)
            , ("M-5", windows $ W.greedyView $ myWorkspaces !! 4)
            , ("M-6", windows $ W.greedyView $ myWorkspaces !! 5)
            , ("M-7", windows $ W.greedyView $ myWorkspaces !! 6)
            , ("M-8", windows $ W.greedyView $ myWorkspaces !! 7)
            , ("M-9", windows $ W.greedyView $ myWorkspaces !! 8)

            -- send to workspace
            , ("M-S-1", windows $ W.shift $ head myWorkspaces)
            , ("M-S-2", windows $ W.shift $ myWorkspaces !! 1)
            , ("M-S-3", windows $ W.shift $ myWorkspaces !! 2)
            , ("M-S-4", windows $ W.shift $ myWorkspaces !! 3)
            , ("M-S-5", windows $ W.shift $ myWorkspaces !! 4)
            , ("M-S-6", windows $ W.shift $ myWorkspaces !! 5)
            , ("M-S-7", windows $ W.shift $ myWorkspaces !! 6)
            , ("M-S-8", windows $ W.shift $ myWorkspaces !! 7)
            , ("M-S-9", windows $ W.shift $ myWorkspaces !! 8)

            -- go to window
            , ("M-l", windowGo R False)
            , ("M-h", windowGo L False)
            , ("M-j", windowGo D False)
            , ("M-k", windowGo U False)

            -- window swap
            , ("M-S-l", windowSwap R False)
            , ("M-S-h", windowSwap L False)
            , ("M-S-j", windowSwap D False)
            , ("M-S-k", windowSwap U False)
            ]
    '';
  };
}
