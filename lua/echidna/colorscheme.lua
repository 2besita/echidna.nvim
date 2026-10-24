local p = {
	background_low = "#212020",
	background = "#252525",
	background_high = "#333131",
	background_higher = "#404040",
	foreground = "#f2f2f2",

	grey = "#7c7c70",
	dark_grey = "#636366",
    gray2 = "#d4d4d4",
	gray2_dark = "#646464",
	gray3 = "#9999a3",
	gray3_dark = "#838385",
	gray4 = "#b9b9b9",
	gray4_dark = "#a5a5a5",
	green = "#c3d9ac",
	green_dark = "#95a683",
	yellow = "#e8f2c4",
	yellow_dark = "#c1d184",
    lime = "#96ab97",
    lime_dark = "#7e8f7e",
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
	colorscheme.gray4 = p.gray4
	colorscheme.gray4_dark = p.gray4_dark
	colorscheme.lime = p.lime
	colorscheme.lime_dark = p.lime_dark
	colorscheme.gray3 = p.gray3
	colorscheme.gray3_dark = p.gray3_dark

	colorscheme.terminal = {
		black = p.grey,
		gray2 = p.gray2,
		green = p.gray3,
		yellow = p.yellow,
		gray4 = p.gray4,
		lime = p.lime,
		cyan = p.gray3,
		white = p.foreground,

		bright_black = p.grey,
		bright_gray2 = p.gray2_dark,
		bright_green = p.green,
		bright_yellow = p.yellow_dark,
		bright_gray4 = p.gray4_dark,
		bright_lime = p.green_dark,
		bright_cyan = p.gray3_dark,
		bright_white = p.foreground,

		background = p.background_low,
		foreground = p.foreground,
	}

	return colorscheme
end

return M
