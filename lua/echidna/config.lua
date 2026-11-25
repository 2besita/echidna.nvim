local config = {
	defaults = {
		variant = "echidna-amni",
		transparent = false,
		italics = {
			comments = false,
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
