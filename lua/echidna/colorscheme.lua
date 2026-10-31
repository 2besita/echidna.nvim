local p = {
	background_low = "#111010",
	background = "#212020",
	background_high = "#252525",
	background_higher = "#333131",
	foreground = "#f2f2f2",

	grey = "#737373",
	dark_grey = "#636366",
    red = "#f2cbbd",
	red_dark = "#f2a5b5",
	lavender = "#e6daf2",
	lavender_dark = "#a796b3",
    moss = "#96ab97",
    moss_dark = "#7e8f7e",
	green = "#c3d9ac",
	green_dark = "#95a683",
	yellow = "#e8f2c4",
	yellow_dark = "#c1d184",
	lime = "#a4d726",
    lime_dark = "#8da73f",
}

local M = {}

function M.pick()
	local colorscheme = {}

	colorscheme.background_low = p.background_low
	colorscheme.background = p.background
	colorscheme.background_high = p.background_high
	colorscheme.background_higher = p.background_higher
	colorscheme.foreground = p.foreground

	colorscheme.grey = p.grey
	colorscheme.dark_grey = p.dark_grey
	colorscheme.red = p.red
	colorscheme.red_dark = p.red_dark
	colorscheme.green = p.green
	colorscheme.green_dark = p.green_dark
	colorscheme.yellow = p.yellow
	colorscheme.yellow_dark = p.yellow_dark
	colorscheme.lavender = p.lavender
	colorscheme.lavender_dark = p.lavender_dark
	colorscheme.moss = p.moss
	colorscheme.moss_dark = p.moss_dark
	colorscheme.lime = p.lime
	colorscheme.lime_dark = p.lime_dark

	colorscheme.terminal = {
		black = p.grey,
		red = p.red,
		green = p.lime,
		yellow = p.yellow,
		lavender = p.lavender,
		moss = p.moss,
		cyan = p.lime,
		white = p.foreground,

		bright_black = p.grey,
		bright_red = p.red_dark,
		bright_green = p.green,
		bright_yellow = p.yellow_dark,
		bright_lavender = p.lavender_dark,
		bright_moss = p.green_dark,
		bright_cyan = p.lime_dark,
		bright_white = p.foreground,

		background = p.background_low,
		foreground = p.foreground,
	}

	return colorscheme
end

return M
