local config = require("echidna.config")
local colorscheme = require("echidna.colorscheme").pick()

local bg = (config.transparent and colorscheme.background_high) or colorscheme.background_low

local M = {}

M.normal = {
	a = { bg = colorscheme.lime, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.lime },
	c = { bg = bg, fg = colorscheme.lime },
	x = { bg = bg, fg = colorscheme.lime },
	y = { bg = colorscheme.background_high, fg = colorscheme.lime },
	z = { bg = colorscheme.background_higher, fg = colorscheme.lime },
}

M.insert = {
	a = { bg = colorscheme.green, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.green },
	c = { bg = bg, fg = colorscheme.green },
	x = { bg = bg, fg = colorscheme.green },
	y = { bg = colorscheme.background_high, fg = colorscheme.green },
	z = { bg = colorscheme.background_higher, fg = colorscheme.green },
}

M.terminal = {
	a = { bg = colorscheme.green, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.lime_dark },
	c = { bg = bg, fg = colorscheme.lime_dark },
	x = { bg = bg, fg = colorscheme.lime_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.lime_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.lime_dark },
}

M.command = {
	a = { bg = colorscheme.lime_dark, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.yellow },
	c = { bg = bg, fg = colorscheme.yellow },
	x = { bg = bg, fg = colorscheme.yellow },
	y = { bg = colorscheme.background_high, fg = colorscheme.yellow },
	z = { bg = colorscheme.background_higher, fg = colorscheme.yellow },
}

M.visual = {
	a = { bg = colorscheme.yellow_dark, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	c = { bg = bg, fg = colorscheme.magenta },
	x = { bg = bg, fg = colorscheme.magenta },
	y = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	z = { bg = colorscheme.background_higher, fg = colorscheme.magenta },
}

M.replace = {
	a = { bg = colorscheme.green_dark, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.red },
	c = { bg = bg, fg = colorscheme.red },
	x = { bg = bg, fg = colorscheme.red },
	y = { bg = colorscheme.background_high, fg = colorscheme.red },
	z = { bg = colorscheme.background_higher, fg = colorscheme.red },
}

M.inactive = {
	a = { bg = colorscheme.background_higher, fg = colorscheme.grey },
	b = { bg = bg, fg = colorscheme.grey },
	c = { bg = bg, fg = colorscheme.grey },
	x = { bg = bg, fg = colorscheme.grey },
	y = { bg = bg, fg = colorscheme.grey },
	z = { bg = colorscheme.background_high, fg = colorscheme.grey },
}

return M
