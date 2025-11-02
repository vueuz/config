local wezterm = require("wezterm");
local embark = require('embark');

local mux = wezterm.mux
local act = wezterm.action

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

local config = {
  keys = {
     {
      key = 'i',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Right',
        size = { Percent = 50 },
      },
    },
    {
      key = 'u',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Up',
        size = { Percent = 50 },
      },

    },
    {
      key = 'e',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Down',
        size = { Percent = 50 },
      }
    },
    {
      key = 'n',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Left',
        size = { Percent = 50 },
      }
    },
    {
      key = 'n',
      mods = 'ALT',
      action = act.ActivatePaneDirection 'Left',
    },
    {
      key = 'u',
      mods = 'ALT',
      action = act.ActivatePaneDirection 'Up',
    },
    {
      key = 'e',
      mods = 'ALT',
      action = act.ActivatePaneDirection 'Down',
    },
    {
      key = 'i',
      mods = 'ALT',
      action = act.ActivatePaneDirection 'Right',
    },
    {
      key = 'f',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.TogglePaneZoomState,
    },
    {
      key = 'q',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.CloseCurrentPane { confirm = false },
    }
    
  },
	
window_decorations = "RESIZE",
window_background_opacity = 0.95, -- 如果设置为1.0会明显卡顿
    window_padding = {
        left = 10,
        right = 10,
        top = 5,
        bottom = -5
    },
   
    window_close_confirmation = "NeverPrompt",
    enable_scroll_bar = true,
    exit_behavior = "Close",

    inactive_pane_hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 1.0,
    },


    font = wezterm.font('CaskaydiaMono Nerd Font Propo',{ weight = 'Light' }),
    font_size = 19.0,

	color_scheme = "Laser",
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true
}



function Basename(s)
    return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local pane = tab.active_pane
    local title = Basename(pane.foreground_process_name)
-- uppercase the title
    title = string.upper(title)
    return {
        { Text = "  " .. title .. "   " },
    }
end)

return config
