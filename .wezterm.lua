-- pull in wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
-- setup and return config object
local config = {}

-- options
config = wezterm.config_builder()
config.adjust_window_size_when_changing_font_size = false
config.automatically_reload_config = false
config.color_scheme = "Bamboo"
config.hide_tab_bar_if_only_one_tab = true
config.leader = { key = "Space", mods = "CTRL|SHIFT" }
config.use_dead_keys = false
config.warn_about_missing_glyphs = true
config.font_size = 20.0
-- fonts
config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	weight = 450,
	stretch = "Normal",
	style = "Normal",
	harfbuzz_features = { "liga=1", "cv14", "cv24", "ss03", "ss04", "ss05", "ss07" },
})

--keys
config.keys = {
	-- split horizontally
	{
		key = "v",
		mods = "ALT|CMD",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- Split vertically
	{
		key = "s",
		mods = "CTRL|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- Scroll up 1 line
	{ key = "UpArrow", mods = "SHIFT", action = act.ScrollByLine(-1) },

	-- Scroll down 1 line
	{ key = "DownArrow", mods = "SHIFT", action = act.ScrollByLine(1) },

	-- Scrool to bottom
	{ key = "End", mods = "SHIFT", action = act.ScrollToBottom },

	-- Scrool to top
	{ key = "Home", mods = "SHIFT", action = act.ScrollToTop },
}
return config
