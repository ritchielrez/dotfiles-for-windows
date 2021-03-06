local wezterm = require("wezterm")

return {
	-- default_prog = {"C:\\Program Files\\PowerShell\\7\\pwsh.exe"},

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
		"vim.exe",
		"bash.exe",
	},
	font = wezterm.font("CaskaydiaCove NF"),
	font_size = 14,
	-- window_background_opacity = 0.95,
	color_scheme = "TokyoDark",
	enable_tab_bar = false,
}
