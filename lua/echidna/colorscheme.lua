local p = {
	background_low = "#212020",
	background = "#252525",
	background_high = "#333131",
	background_higher = "#404040",
	foreground = "#f2f2f2",

	grey = "#737373",
	dark_grey = "#636366",
    gray2 = "#d4d4d4",
	gray2_dark = "#646464",
	gray3 = "#b9b9b9",
	gray3_dark = "#a5a5a5",
    moss = "#96ab97",
    moss_dark = "#7e8f7e",
	green = "#c3d9ac",
	green_dark = "#95a683",
	yellow = "#e8f2c4",
	yellow_dark = "#c1d184",
	lime = "##a4d726",
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
	colorscheme.gray2 = p.gray2
	colorscheme.gray2_dark = p.gray2_dark
	colorscheme.green = p.green
	colorscheme.green_dark = p.green_dark
	colorscheme.yellow = p.yellow
	colorscheme.yellow_dark = p.yellow_dark
	colorscheme.gray3 = p.gray3
	colorscheme.gray3_dark = p.gray3_dark
	colorscheme.moss = p.moss
	colorscheme.moss_dark = p.moss_dark
	colorscheme.lime = p.lime
	colorscheme.lime_dark = p.lime_dark

	colorscheme.terminal = {
		black = p.grey,
		gray2 = p.gray2,
		green = p.lime,
		yellow = p.yellow,
		gray3 = p.gray3,
		moss = p.moss,
		cyan = p.lime,
		white = p.foreground,

		bright_black = p.grey,
		bright_gray2 = p.gray2_dark,
		bright_green = p.green,
		bright_yellow = p.yellow_dark,
		bright_gray3 = p.gray3_dark,
		bright_moss = p.green_dark,
		bright_cyan = p.lime_dark,
		bright_white = p.foreground,

		background = p.background_low,
		foreground = p.foreground,
	}

	return colorscheme
end

return M
