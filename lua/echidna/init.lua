local palettes      = require('echidna.palettes')
local config        = require("echidna.config")
local utils         = require("echidna.utils")

local theme = {}

local function set_terminal_colors(p)
	vim.g.terminal_color_0  = p.background_low
	vim.g.terminal_color_1  = p.color1
	vim.g.terminal_color_2  = p.color7
	vim.g.terminal_color_3  = p.color7
	vim.g.terminal_color_4  = p.color3
	vim.g.terminal_color_5  = p.color5
	vim.g.terminal_color_6  = p.color11
	vim.g.terminal_color_7  = p.foreground
	vim.g.terminal_color_8  = p.dark_grey
	vim.g.terminal_color_9  = p.color1
	vim.g.terminal_color_10 = p.color11
	vim.g.terminal_color_11 = p.color11
	vim.g.terminal_color_12 = p.color3
	vim.g.terminal_color_13 = p.color5
	vim.g.terminal_color_14 = p.color11
	vim.g.terminal_color_15 = p.foreground

	vim.g.terminal_color_background = p.background_low
	vim.g.terminal_color_foreground = p.foreground
end

local function set_groups(p)
	local bg = config.transparent and "NONE" or p.background_low

	local groups = {
		SnacksNormal                            = { fg = p.foreground, bg = bg },
		SnacksNormalNC                          = { fg = p.foreground, bg = p.background },
		SnacksPicker                            = { fg = p.foreground, bg = p.background },
		SnacksPickerDir                         = { fg = p.color5 },
		red                                     = { fg = p.color1 },
		SnacksPickerGitStatusUntracked          = { fg = p.color5 },
		SnacksPickerDirectory                   = { fg = p.color11 },
		SnacksPickerBox                         = { fg = p.foreground, bg = p.background },

		Normal                                  = { fg = p.foreground, bg = bg },
		LineNr                                  = { fg = p.grey },
		ColorColumn                             = { bg = utils.shade(p.color6, 0.5, p.background_low) },
		Conceal                                 = {},
		Cursor                                  = { fg = p.background_low, bg = p.foreground },
		lCursor                                 = { link = "Cursor" },
		CursorIM                                = { link = "Cursor" },
		CursorLine                              = { bg = p.background },
		CursorColumn                            = { link = "CursorLine" },
		Directory                               = { fg = p.color12 },
		DiffAdd                                 = { bg = bg, fg = p.color3 },
		DiffChange                              = { bg = bg, fg = p.color5 },
		DiffDelete                              = { bg = bg, fg = p.color1 },
		DiffText                                = { bg = bg, fg = p.color11 },
		EndOfBuffer                             = { fg = p.background_high },
		TermCursor                              = { link = "Cursor" },
		TermCursorNC                            = { link = "Cursor" },
		OkMsg                                   = { fg = p.color12 },
		PreInsert                               = { fg = p.color12 },
		Added                                   = { fg = p.color12 },
		ErrorMsg                                = { fg = p.color1 },
		VertSplit                               = { fg = p.color9, bg = "NONE" },
		Winseparator                            = { fg = p.background_higher, bg = "NONE" },
		SignColumn                              = { link = "Normal" },
		Folded                                  = { fg = p.color5, bg = p.background_higher },
		FoldColumn                              = { link = "SignColumn" },
		IncSearch                               = { bg = utils.mix(p.color5, p.background_low, math.abs(0.30)), fg = p.foreground },
		Substitute                              = { link = "IncSearch" },
		CursorLineNr                            = { fg = p.color5, bold = true, bg = "NONE" },
		MatchParen                              = { fg = p.background_low, bg = p.color5 },
		ModeMsg                                 = { link = "Normal" },
		MsgArea                                 = { link = "Normal" },
		MoreMsg                                 = { fg = p.color12 },
		NonText                                 = { fg = utils.shade(p.background_low, 0.30) },
		NormalFloat                             = { bg = p.background },
		FloatBorder                             = { fg = p.background_higher, bg = p.background },
		FloatTitle                              = { fg = p.color9, bg = p.background, bold = true },
		FloatFooter                             = { fg = p.grey },
		NormalNC                                = { link = "Normal" },
		Pmenu                                   = { link = "NormalFloat" },
		PmenuSel                                = { bg = p.background_higher },
		PmenuSbar                               = { bg = utils.shade(p.color6, 0.5, p.background_low) },
		PmenuThumb                              = { bg = utils.shade(p.background_low, 0.20) },
		Question                                = { fg = p.color12 },
		QuickFixLine                            = { fg = p.color5 },
		SpecialKey                              = { fg = p.color9 },
		StatusLine                              = { fg = p.foreground, bg = bg },
		StatusLineNC                            = { fg = p.grey, bg = p.background_high },
		WinBar                                  = { fg = p.foreground, bg = bg },
		WinBarNC                                = { fg = p.grey, bg = bg },
		TabLine                                 = { bg = p.background_high, fg = p.grey },
		TabLineFill                             = { link = "TabLine" },
		TabLineSel                              = { bg = p.background_low, fg = p.color11 },
		CurSearch                               = { bg = utils.shade(p.color11, 0.20, p.background_low), fg = p.foreground },
		Search                                  = { bg = utils.shade(p.color11, 0.20, p.background_low), fg = p.foreground },
		SpellBad                                = { undercurl = true, sp = p.color1 },
		SpellCap                                = { undercurl = true, sp = p.color12 },
		SpellLocal                              = { undercurl = true, sp = p.color5 },
		SpellRare                               = { undercurl = true, sp = p.color9 },
		Title                                   = { fg = p.color5, bold = true },
		Visual                                  = { bg = utils.shade(p.color6, 0.20, p.background_high) },
		VisualNOS                               = { link = "Visual" },
		WarningMsg                              = { fg = p.color9 },
		Whitespace                              = { fg = p.color10 },
		WildMenu                                = { bg = p.background_higher },
		Comment                                 = { fg = p.grey, italic = config.italics.comments or false },

		String                                  = { fg = p.color11, italic = config.italics.strings or false },
		Character                               = { fg = p.color11 },
		Number                                  = { fg = p.color5 },
		Boolean                                 = { fg = p.color6 },
		Float                                   = { link = "Number" },

		Identifier                              = { fg = p.foreground },
		Function                                = { fg = p.color3 },
		Method                                  = { fg = p.color8 },
		Property                                = { fg = p.color12 },
		Field                                   = { link = "Property" },
		Parameter                               = { fg = p.foreground },
		Statement                               = { fg = p.color3 },
		Conditional                             = { fg = p.color6 },
		Label                                   = { fg = p.color12 },
		Operator                                = { fg = p.color3 },
		Keyword                                 = { link = "Statement", italic = config.italics.keywords or false },
		Exception                               = { fg = p.color1 },
		Constant                                = { fg = p.color7 },

		PreProc                                 = { link = "Keyword" },
		Define                                  = { fg = p.color6 },
		Macro                                   = { link = "Define" },
		PreCondit                               = { fg = p.color12 },

		Type                                    = { fg = p.color9 },
		Struct                                  = { link = "Type" },
		Class                                   = { link = "Type" },

		Attribute                               = { link = "Character" },
		Punctuation                             = { fg = p.color9 },
		Special                                 = { fg = p.color8 },

		SpecialChar                             = { fg = p.color11 },
		Tag                                     = { fg = p.color9 },
		Delimiter                               = { fg = p.color9 },
		Debug                                   = { fg = p.color6 },

		Underlined                              = { underline = true },
		Bold                                    = { bold = true },
		Italic                                  = { italic = true },
		Ignore                                  = { fg = p.background_low },
		Error                                   = { link = "ErrorMsg" },
		Todo                                    = { fg = p.color9, bold = true },

		Changed                                 = { fg = p.color6 },
		Removed                                 = { fg = p.color1 },

		DiagnosticOk                            = { fg = p.color12 },
		DiagnosticError                         = { link = "Error" },
		DiagnosticWarn                          = { link = "WarningMsg" },
		DiagnosticInfo                          = { fg = p.color12 },
		DiagnosticHint                          = { fg = p.color5 },
		DiagnosticVirtualTextError              = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn               = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo               = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint               = { link = "DiagnosticHint" },
		DiagnosticUnderlineError                = { undercurl = true, link = "DiagnosticError" },
		DiagnosticUnderlineWarn                 = { undercurl = true, link = "DiagnosticWarn" },
		DiagnosticUnderlineInfo                 = { undercurl = true, link = "DiagnosticInfo" },
		DiagnosticUnderlineHint                 = { undercurl = true, link = "DiagnosticHint" },

		cssDefinition                           = { fg = p.color11 },
		cssTagName                              = { fg = p.foreground_accent },
		cssClassName                            = { fg = p.color9 },

		["@text"]                               = { fg = p.foreground },
		["@text.literal"]                       = { link = "Property" },
		["@text.strong"]                        = { link = "Bold" },
		["@text.italic"]                        = { link = "Italic" },
		["@text.title"]                         = { link = "Keyword" },
		["@text.uri"]                           = { fg = p.color12, sp = p.color12, underline = true },
		["@text.underline"]                     = { link = "Underlined" },
		["@symbol"]                             = { fg = p.color9 },
		["@text.todo"]                          = { link = "Todo" },
		["@comment"]                            = { link = "Comment" },
		["@punctuation"]                        = { link = "Punctuation" },
		["@punctuation.bracket"]                = { fg = p.color9 },
		["@punctuation.delimiter"]              = { fg = p.color6 },
		["@punctuation.terminator.statement"]   = { link = "Delimiter" },
		["@punctuation.special"]                = { fg = p.color11 },
		["@punctuation.separator.keyvalue"]     = { fg = p.color11 },

		["@text.diff.add"]                      = { fg = p.color3 },
		["@text.diff.delete"]                   = { fg = p.color1 },

		["@constant"]                           = { link = "Constant" },
		["@constant.builtin"]                   = { fg = p.color6 },
		["@string"]                             = { link = "String" },
		["@string.escape"]                      = { fg = p.color11 },
		["@string.special"]                     = { fg = p.color6 },
		["@number"]                             = { link = "Number" },
		["@boolean"]                            = { link = "Boolean" },
		["@function"]                           = { link = "Function", italic = config.italics.functions or false },
		["@function.call"]                      = { link = "Function" },
		["@function.builtin"]                   = { link = "Function" },
		["@parameter"]                          = { link = "Parameter" },
		["@method"]                             = { link = "Function" },
		["@field"]                              = { link = "Property" },
		["@property"]                           = { link = "Property" },
		["@constructor"]                        = { fg = p.color10 },
		["@label"]                              = { link = "Label" },
		["@operator"]                           = { link = "Operator" },
		["@exception"]                          = { link = "Exception" },
		["@variable"]                           = { fg = p.foreground_accent, italic = config.italics.variables or false },
		["@variable.builtin"]                   = { fg = p.color11 },
		["@variable.member"]                    = { fg = p.color3 },
		["@variable.parameter"]                 = { fg = p.foreground, italic = config.italics.variables or false },
		["@type"]                               = { link = "Type" },
		["@type.definition"]                    = { fg = p.color12 },
		["@type.builtin"]                       = { fg = p.color11 },
		["@type.qualifier"]                     = { fg = p.color6 },
		["@keyword"]                            = { link = "Keyword" },
		["@namespace"]                          = { link = "Type" },
		["@annotation"]                         = { link = "Label" },
		["@debug"]                              = { fg = p.color6 },
		["@tag"]                                = { link = "Tag" },
		["@tag.builtin"]                        = { link = "Tag" },
		["@tag.delimiter"]                      = { fg = p.color10 },
		["@tag.attribute"]                      = { fg = p.color7 },
		["@tag.jsx.element"]                    = { fg = p.color6 },
		["@attribute"]                          = { fg = p.color12 },
		["@error"]                              = { link = "Error" },
		["@warning"]                            = { link = "WarningMsg" },
		["@info"]                               = { fg = p.color12 },

		["@label.json"]                         = { fg = p.color6 },
		["@label.help"]                         = { link = "@text.uri" },
		["@text.uri.html"]                      = { underline = true },

		["@lsp.type.namespace"]                 = { link = "@namespace" },
		["@lsp.type.type"]                      = { link = "@type" },
		["@lsp.type.class"]                     = { link = "@type" },
		["@lsp.type.enum"]                      = { link = "@type" },
		["@lsp.type.enumMember"]                = { fg = p.color5 },
		["@lsp.type.interface"]                 = { link = "@type" },
		["@lsp.type.struct"]                    = { link = "@type" },
		["@lsp.type.parameter"]                 = { link = "@parameter" },
		["@lsp.type.property"]                  = { link = "@text" },
		["@lsp.type.function"]                  = { link = "@function" },
		["@lsp.type.method"]                    = { link = "@method" },
		["@lsp.type.macro"]                     = { link = "@label" },
		["@lsp.type.decorator"]                 = { link = "@label" },
		["@lsp.typemod.function.declaration"]   = { link = "@function" },
		["@lsp.typemod.function.readonly"]      = { link = "@function" },
	}

	groups = vim.tbl_extend(
		"force",
		groups,
		type(config.overrides) == "function" and config.overrides() or config.overrides or {}
	)

	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

function theme.setup(values)
	config = vim.tbl_deep_extend("force", config.defaults, values or {})
end

function theme.colorscheme(name)
	if vim.fn.has("nvim-0.8") == 0 then
		vim.notify(
			"Neovim 0.8+ is required for echidna colorscheme",
			vim.log.levels.ERROR,
			{ title = "Echidna Theme" }
		)
		return
	end

	name = name or vim.g.colors_name
	local p = palettes[name]

	if not p then
		vim.notify(
			"Unknown echidna variant: " .. tostring(name),
			vim.log.levels.ERROR,
			{ title = "Echidna Theme" }
		)
		return
	end

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = name

	set_terminal_colors(p)
	set_groups(p)
end

return theme
