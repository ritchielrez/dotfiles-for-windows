local wezterm = require("wezterm")

-- local scheme = wezterm.get_builtin_color_schemes()["Gruvbox Dark"]
-- scheme.background = "#282828"
-- scheme.foreground = "#ebdbb2"

return {
	--    default_prog = {"C:\\Program Files\\PowerShell\\7\\pwsh.exe"},
	-- color_schemes = {
	-- 	-- Override the builtin Gruvbox Light scheme with our modification.
	-- 	["Gruvbox Dark"] = scheme,
	-- },
	color_scheme = "Gruvbox",
	font = wezterm.font("CaskaydiaCove NF"),
	font_size = 12.15,
	window_background_opacity = 0.96,
	enable_tab_bar = false,
}
