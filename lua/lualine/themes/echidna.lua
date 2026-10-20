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
	a = { bg = colorscheme.heather, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.heather },
	c = { bg = bg, fg = colorscheme.heather },
	x = { bg = bg, fg = colorscheme.heather },
	y = { bg = colorscheme.background_high, fg = colorscheme.heather },
	z = { bg = colorscheme.background_higher, fg = colorscheme.heather },
}

M.terminal = {
	a = { bg = colorscheme.ice_dark, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.ice_dark },
	c = { bg = bg, fg = colorscheme.ice_dark },
	x = { bg = bg, fg = colorscheme.ice_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.ice_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.ice_dark },
}

M.command = {
	a = { bg = colorscheme.yellow, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.yellow },
	c = { bg = bg, fg = colorscheme.yellow },
	x = { bg = bg, fg = colorscheme.yellow },
	y = { bg = colorscheme.background_high, fg = colorscheme.yellow },
	z = { bg = colorscheme.background_higher, fg = colorscheme.yellow },
}

M.visual = {
	a = { bg = colorscheme.magenta, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	c = { bg = bg, fg = colorscheme.magenta },
	x = { bg = bg, fg = colorscheme.magenta },
	y = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	z = { bg = colorscheme.background_higher, fg = colorscheme.magenta },
}

M.replace = {
	a = { bg = colorscheme.red, fg = colorscheme.background },
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
