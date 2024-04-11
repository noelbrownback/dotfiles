local wezterm = require 'wezterm'
local config = {}


-- local colors = wezterm.color.load_scheme("tokyonight_moon.toml")
config.color_scheme = 'Tokyo Night Storm'

-- Title Bar Settings
config.use_fancy_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_buttons = { 'Close'}
-- config.hide_tab_bar_if_only_one_tab = true
-- config.tab_bar_at_bottom = true

config.font = wezterm.font('FiraCode')

config.window_padding = {
    left = 1.5, 
    right = 1.5,
    top = 1.5,
    bottom = 1.5,
}

return config
