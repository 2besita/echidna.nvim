local p = {
	background_low = "#212020",
	background = "#213030",
	background_high = "#333131",
	background_higher = "#400000",
	foreground = "#f2f2f2",

	grey = "#7c7c70",
	dark_grey = "#636366",
    red = "#f2cbbd",
	red_dark = "#f2a5b5",
	green = "#c3d9ac",
	green_dark = "#9ba683",
	lime = "#a6c587",
	lime_dark = "#81775b",
	heather = "#a796b3",
	heather_dark = "#766482",
    magenta = "#e6daf2",
	magenta_dark = "#c291f2",
	yellow = "#dff299",
	yellow_dark = "#d6d98f",
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
	colorscheme.heather = p.heather
	colorscheme.heather_dark = p.heather_dark
	colorscheme.magenta = p.magenta
	colorscheme.magenta_dark = p.magenta_dark
	colorscheme.lime = p.lime
	colorscheme.lime_dark = p.lime_dark

	colorscheme.terminal = {
		black = p.grey,
		red = p.red,
		green = p.lime,
		green = p.yellow,
		heather = p.heather,
		magenta = p.magenta,
		cyan = p.lime,
		white = p.foreground,

		bright_black = p.grey,
		bright_red = p.red_dark,
		bright_green = p.green,
		green = p.yellow_dark,
		bright_heather = p.heather_dark,
		bright_magenta = p.green_dark,
		bright_cyan = p.lime_dark,
		bright_white = p.foreground,

		background = p.background_low,
		foreground = p.foreground,
	}

	return colorscheme
end

return M
