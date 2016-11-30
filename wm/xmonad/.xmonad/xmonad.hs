import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Prompt
import XMonad.Prompt.RunOrRaise
import XMonad.Hooks.SetWMName 
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
 
main = do
    conf <- xmobar defaultConfig
    xmonad $ conf
        { terminal    = "xterm"
        , layoutHook = smartBorders (layoutHook conf)
--		, manageHook = composeOne [ isFullscreen -?> doFullFloat ]
		, modMask = mod4Mask
		, workspaces = ["1","2","3","4"]
        } `additionalKeys`
        [((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock") 
		,((modMask conf , xK_p), runOrRaisePrompt defaultXPConfig { position =
    Top })]
