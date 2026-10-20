local config = {
	defaults = {
		transparent = false,
		italics = {
			comments = true,
			keywords = false,
			functions = false,
			strings = false,
			variables = false,
			bufferline = false,
		},
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
