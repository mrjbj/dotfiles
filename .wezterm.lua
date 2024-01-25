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
config.leader = { key = "Space", mods = "ALT|SHIFT" }
config.use_dead_keys = false
config.warn_about_missing_glyphs = true
config.command_palette_font_size = 20.0
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_duration_ms = 75,
	fade_out_duration_ms = 75,
	target = "CursorColor",
}
config.font_size = 18.0
-- fonts
config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	weight = 450,
	stretch = "Normal",
	style = "Normal",
	harfbuzz_features = { "liga=1", "cv14", "cv24", "ss03", "ss04", "ss05", "ss07" },
})
config.unzoom_on_switch_pane = true
--keys
config.keys = {
	-- Scrolling
	{ key = "UpArrow", mods = "SHIFT", action = act.ScrollByLine(-15) },
	{ key = "DownArrow", mods = "SHIFT", action = act.ScrollByLine(15) },
	{ key = "End", mods = "SHIFT", action = act.ScrollToBottom },
	{ key = "Home", mods = "SHIFT", action = act.ScrollToTop },
	-- switch between window
	-- { key = "H",         mods = "CTRL|SHIFT", action = act.ActivateWindowRelative(-1) },
	-- { key = "L",        mods = "CTRL|SHIFT", action = act.ActivateWindowRelative(1) },
	-- switch panes
	{ key = "H", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
	{ key = "L", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
	{ key = "K", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Up") },
	{ key = "J", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Down") },
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}
return config
