-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.colors = {
	foreground = "#e0e0e0",
	background = "#060706",
	cursor_bg = "#1ca9d8",
	-- cursor_border = "#47FF9C",
	-- cursor_fg = "#011423",
	selection_bg = "#344768",
	selection_fg = "#ffffff",
	-- ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	-- brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.font = wezterm.font("Cascadia Code PL")
config.font_size = 13

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.92
config.macos_window_background_blur = 15

-- and finally, return the configuration to wezterm
return config