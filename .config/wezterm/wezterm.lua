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
	skip_close_confirmation_for_processes_named = {
		"bash",
		"sh",
		"zsh",
		"fish",
		"tmux",
		"nu",
		"cmd.exe",
		"pwsh.exe",
		"powershell.exe",
        "nvim.exe",
	},
	color_scheme = "Gruvbox",
	font = wezterm.font("CaskaydiaCove NF"),
	font_size = 12.15,
	window_background_opacity = 0.96,
	window_background_gradient = {
		-- Can be "Vertical" or "Horizontal".  Specifies the direction
		-- in which the color gradient varies.  The default is "Horizontal",
		-- with the gradient going from left-to-right.
		-- Radial gradients are also supported; see the other example below
		orientation = "Vertical",

		-- Specifies the set of colors that are interpolated in the gradient.
		-- Accepts CSS style color specs, from named colors, through rgb
		-- strings and more
		colors = {
			"#282828",
			"#3c3836",
			"#242424",
			"#282828",
			"#282828",
		},

		-- Instead of specifying `colors`, you can use one of a number of
		-- predefined, preset gradients.
		-- A list of presets is shown in a section below.
		-- preset = "Warm",

		-- Specifies the interpolation style to be used.
		-- "Linear", "Basis" and "CatmullRom" as supported.
		-- The default is "Linear".
		interpolation = "Linear",

		-- How the colors are blended in the gradient.
		-- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
		-- The default is "Rgb".
		blend = "Rgb",

		-- To avoid vertical color banding for horizontal gradients, the
		-- gradient position is randomly shifted by up to the `noise` value
		-- for each pixel.
		-- Smaller values, or 0, will make bands more prominent.
		-- The default value is 64 which gives decent looking results
		-- on a retina macbook pro display.
		-- noise = 64,

		-- By default, the gradient smoothly transitions between the colors.
		-- You can adjust the sharpness by specifying the segment_size and
		-- segment_smoothness parameters.
		-- segment_size configures how many segments are present.
		-- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
		-- 1.0 is a soft edge.

		-- segment_size = 11,
		-- segment_smoothness = 0.0,
	},
	enable_tab_bar = false,
}
