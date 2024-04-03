return {
  { key = "Tab", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = 1 }) },
  { key = "i", mods = "CTRL|SHIFT", action = wezterm.action.split_horizontal() },
}
