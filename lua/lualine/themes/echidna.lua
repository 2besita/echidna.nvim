local config = require("echidna.config")
local colorscheme = require("echidna.colorscheme").pick()

local bg = (config.transparent and colorscheme.background_high) or colorscheme.background_low

local M = {}

M.normal = {
	a = { bg = colorscheme.moss, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.moss },
	c = { bg = bg, fg = colorscheme.moss },
	x = { bg = bg, fg = colorscheme.moss },
	y = { bg = colorscheme.background_high, fg = colorscheme.moss },
	z = { bg = colorscheme.background_higher, fg = colorscheme.moss },
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
	b = { bg = colorscheme.background_high, fg = colorscheme.moss_dark },
	c = { bg = bg, fg = colorscheme.moss_dark },
	x = { bg = bg, fg = colorscheme.moss_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.moss_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.moss_dark },
}

M.command = {
	a = { bg = colorscheme.moss_dark, fg = colorscheme.background },
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
