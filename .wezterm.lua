-- pull in wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
-- setup and return config object
local config = {}

-- options
config = wezterm.config_builder()
config.adjust_window_size_when_changing_font_size = false
config.automatically_reload_config = true
config.color_scheme = "Bamboo"
config.hide_tab_bar_if_only_one_tab = true
config.leader = { key = "Space", mods = "CTRL|SHIFT" }
config.use_dead_keys = false
config.warn_about_missing_glyphs = true
config.command_palette_font_size = 20.0
config.font_size = 20.0
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_duration_ms = 75,
	fade_out_duration_ms = 75,
	target = "CursorColor",
}
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
	-- reset CTRL|SHIFT L so can use later below
	{ key = "L",         mods = "CTRL|SHIFT", action = "DisableDefaultAssignment" },
	-- split horizontally
	{
		key = "H",
		mods = "CTRL|SHIFT|ALT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- Split vertically
	{
		key = "V",
		mods = "CTRL|SHIFT|ALT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- switch pane left
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	-- switch pane right
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	-- switch pane up
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	-- switch pane down
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	-- Scroll up 1 line
	{ key = "UpArrow",   mods = "SHIFT",      action = act.ScrollByLine(-1) },

	-- Scroll down 1 line
	{ key = "DownArrow", mods = "SHIFT",      action = act.ScrollByLine(1) },

	-- Scrool to bottom
	{ key = "End",       mods = "SHIFT",      action = act.ScrollToBottom },

	-- Scrool to top
	{ key = "Home",      mods = "SHIFT",      action = act.ScrollToTop },
}
return config
