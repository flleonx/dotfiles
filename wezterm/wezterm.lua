local wezterm = require("wezterm")
local config = {}

-- config.font = wezterm.font("Monaspace Neon")
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12
config.automatically_reload_config = true
-- config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
-- config.harfbuzz_features = { "calt", "ss01=0", "ss02=0", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" }

config.max_fps = 120

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Everforest Dark (Gogh)"
	else
		return "Everforest Light (Gogh)"
	end
end

wezterm.on("window-config-reloaded", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	local appearance = window:get_appearance()
	local scheme = scheme_for_appearance(appearance)
	if overrides.color_scheme ~= scheme then
		overrides.color_scheme = scheme
		window:set_config_overrides(overrides)
	end
end)

return config
