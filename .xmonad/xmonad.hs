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
    conf <- dzen defaultConfig
    xmonad $ conf
        { terminal    = "xterm"
        , layoutHook = smartBorders (layoutHook conf)
--      , manageHook = composeOne [ isFullscreen -?> doFullFloat ]
		, modMask = mod4Mask
        } `additionalKeys`
        [((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock") 
		,((modMask conf , xK_p), runOrRaisePrompt defaultXPConfig { position =
    Top })]
