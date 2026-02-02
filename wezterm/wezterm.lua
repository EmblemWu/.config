local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 17
config.enable_tab_bar = false
config.window_decorations="RESIZE"

config.colors = {
	foreground = '#CBE0F0',
}

config.window_background_opacity = 0.7
config.use_ime = true

return config
