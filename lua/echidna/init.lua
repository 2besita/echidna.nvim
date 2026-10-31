local bufferline = require("echidna.integrations.bufferline")
local cmp = require("echidna.integrations.cmp")
local colorscheme_module = require("echidna.colorscheme")
local ibl = require("echidna.integrations.ibl")
local config = require("echidna.config")
local utils = require("echidna.utils")
local theme = {}

local function set_terminal_colors(colorscheme)
	local t = colorscheme.terminal

	vim.g.terminal_color_0 = t.black
	vim.g.terminal_color_1 = t.red
	vim.g.terminal_color_2 = t.green
	vim.g.terminal_color_3 = t.green
	vim.g.terminal_color_4 = t.lavender
	vim.g.terminal_color_5 = t.moss
	vim.g.terminal_color_6 = t.cyan
	vim.g.terminal_color_7 = t.white
	vim.g.terminal_color_8 = t.bright_black
	vim.g.terminal_color_9 = t.red
	vim.g.terminal_color_10 = t.bright_green
	vim.g.terminal_color_11 = t.bright_green
	vim.g.terminal_color_12 = t.lavender
	vim.g.terminal_color_13 = t.moss
	vim.g.terminal_color_14 = t.bright_cyan
	vim.g.terminal_color_15 = t.bright_white

	vim.g.terminal_color_background = t.background
	vim.g.terminal_color_foreground = t.foreground
end

local function set_groups(colorscheme)
	local bg = config.transparent and "NONE" or colorscheme.background_low

	local groups = {
		SnacksNormal = { fg = colorscheme.foreground, bg = bg },
		SnacksNormalNC = { fg = colorscheme.foreground, bg = colorscheme.background },
		SnacksPicker = { fg = colorscheme.foreground, bg = colorscheme.background },
		SnacksPickerDir = { fg = colorscheme.moss },
		red = { fg = colorscheme.moss },
		SnacksPickerGitStatusUntracked = { fg = colorscheme.moss },
		SnacksPickerDirectory = { fg = colorscheme.lime },
		SnacksPickerBox = { fg = colorscheme.foreground, bg = colorscheme.background },

		Normal = { fg = colorscheme.foreground, bg = bg },
		LineNr = { fg = colorscheme.grey },
		ColorColumn = {
			bg = utils.shade(colorscheme.moss_dark, 0.5, colorscheme.background_low),
		},
		Conceal = {},
		Cursor = { fg = colorscheme.background_low, bg = colorscheme.foreground },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = colorscheme.background },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = colorscheme.lime_dark },
		DiffAdd = { bg = bg, fg = colorscheme.lavender },
		DiffChange = { bg = bg, fg = colorscheme.moss },
		DiffDelete = { bg = bg, fg = colorscheme.red },
		DiffText = { bg = bg, fg = colorscheme.lime },
		EndOfBuffer = { fg = colorscheme.background_high },
		TermCursor = { link = "Cursor" },
		TermCursorNC = { link = "Cursor" },
		OkMsg = { fg = colorscheme.lime_dark },
		PreInsert = { fg = colorscheme.lime_dark },
		Added = { fg = colorscheme.lime_dark },
		ErrorMsg = { fg = colorscheme.red },
		VertSplit = { fg = colorscheme.yellow, bg = "NONE" },
		Winseparator = { fg = colorscheme.background_higher, bg = "NONE" },
		SignColumn = { link = "Normal" },
		Folded = { fg = colorscheme.moss, bg = colorscheme.background_higher },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(colorscheme.moss, colorscheme.background_low, math.abs(0.30)),
			fg = colorscheme.foreground,
		},
		Substitute = { link = "IncSearch" },
		CursorLineNr = { fg = colorscheme.moss, bold = true, bg = "NONE" },
		MatchParen = { fg = colorscheme.background_low, bg = colorscheme.moss },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		MoreMsg = { fg = colorscheme.lime_dark },
		NonText = { fg = utils.shade(colorscheme.background_low, 0.30) },
		NormalFloat = { bg = colorscheme.background },
		FloatBorder = { fg = colorscheme.background_higher, bg = colorscheme.background },
		FloatTitle = { fg = colorscheme.yellow, bg = colorscheme.background, bold = true },
		FloatFooter = { fg = colorscheme.grey },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = colorscheme.background_higher },
		PmenuSbar = {
			bg = utils.shade(colorscheme.moss_dark, 0.5, colorscheme.background_low),
		},
		PmenuThumb = { bg = utils.shade(colorscheme.background_low, 0.20) },
		Question = { fg = colorscheme.lime_dark },
		QuickFixLine = { fg = colorscheme.moss },
		SpecialKey = { fg = colorscheme.yellow },
		StatusLine = { fg = colorscheme.foreground, bg = bg },
		StatusLineNC = {
			fg = colorscheme.grey,
			bg = colorscheme.background_high,
		},
		WinBar = { fg = colorscheme.foreground, bg = bg },
		WinBarNC = { fg = colorscheme.grey, bg = bg },
		TabLine = {
			bg = colorscheme.background_high,
			fg = colorscheme.grey,
		},
		TabLineFill = { link = "TabLine" },
		TabLineSel = {
			bg = colorscheme.background_low,
			fg = colorscheme.lime,
		},
		CurSearch = { bg = utils.shade(colorscheme.lime, 0.20, colorscheme.background_low), fg = colorscheme.foreground },
		Search = { bg = utils.shade(colorscheme.lime, 0.20, colorscheme.background_low), fg = colorscheme.foreground },
		SpellBad = { undercurl = true, sp = colorscheme.red },
		SpellCap = { undercurl = true, sp = colorscheme.lime_dark },
		SpellLocal = { undercurl = true, sp = colorscheme.moss },
		SpellRare = { undercurl = true, sp = colorscheme.yellow },
		Title = { fg = colorscheme.moss, bold = true },
		Visual = {
			bg = utils.shade(colorscheme.moss_dark, 0.20, colorscheme.background_low),
		},
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = colorscheme.yellow },
		Whitespace = { fg = colorscheme.yellow_dark },
		WildMenu = { bg = colorscheme.background_higher },
		Comment = {
			fg = colorscheme.grey,
			italic = config.italics.comments or false,
		},

		String = {
			fg = colorscheme.lime,
			italic = config.italics.strings or false,
		},
		Character = { fg = colorscheme.lime },
		Number = { fg = colorscheme.moss, bold = true },
		Boolean = { fg = colorscheme.moss_dark },
		Float = { link = "Number" },

		Identifier = { fg = colorscheme.foreground },
		Function = { fg = colorscheme.lavender },
		Method = { fg = colorscheme.green_dark },
		Property = { fg = colorscheme.lime_dark },
		Field = { link = "Property" },
		Parameter = { fg = colorscheme.foreground },
		Statement = { fg = colorscheme.lavender },
		Conditional = { fg = colorscheme.moss_dark },
		Label = { fg = colorscheme.lime_dark },
		Operator = { fg = colorscheme.lavender },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = colorscheme.red },
		Constant = { fg = colorscheme.green },

		PreProc = { link = "Keyword" },
		Define = { fg = colorscheme.moss_dark },
		Macro = { link = "Define" },
		PreCondit = { fg = colorscheme.lime_dark },

		Type = { fg = colorscheme.moss_dark },
		Struct = { link = "Type" },
		Class = { link = "Type" },

		Attribute = { link = "Character" },
		Punctuation = { fg = colorscheme.yellow },
		Special = { fg = colorscheme.green_dark },

		SpecialChar = { fg = colorscheme.red },
		Tag = { fg = colorscheme.yellow },
		Delimiter = { fg = colorscheme.yellow },
		Debug = { fg = colorscheme.moss_dark },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = colorscheme.background_low },
		Error = { link = "ErrorMsg" },
		Todo = { fg = colorscheme.yellow, bold = true },

		Changed = { fg = colorscheme.moss_dark },
		Removed = { fg = colorscheme.red },

		DiagnosticOk = { fg = colorscheme.lime_dark },
		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colorscheme.lime_dark },
		DiagnosticHint = { fg = colorscheme.moss },
		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { undercurl = true, link = "DiagnosticError" },
		DiagnosticUnderlineWarn = { undercurl = true, link = "DiagnosticWarn" },
		DiagnosticUnderlineInfo = { undercurl = true, link = "DiagnosticInfo" },
		DiagnosticUnderlineHint = { undercurl = true, link = "DiagnosticHint" },

		["@text"] = { fg = colorscheme.foreground },
		["@text.literal"] = { link = "Property" },
		["@text.strong"] = { link = "Bold" },
		["@text.italic"] = { link = "Italic" },
		["@text.title"] = { link = "Keyword" },
		["@text.uri"] = {
			fg = colorscheme.lime_dark,
			sp = colorscheme.lime_dark,
			underline = true,
		},
		["@text.underline"] = { link = "Underlined" },
		["@symbol"] = { fg = colorscheme.yellow },
		["@text.todo"] = { link = "Todo" },
		["@comment"] = { link = "Comment" },
		["@punctuation"] = { link = "Punctuation" },
		["@punctuation.bracket"] = { fg = colorscheme.yellow },
		["@punctuation.delimiter"] = { fg = colorscheme.moss_dark },
		["@punctuation.terminator.statement"] = { link = "Delimiter" },
		["@punctuation.special"] = { fg = colorscheme.lime },
		["@punctuation.separator.keyvalue"] = { fg = colorscheme.lime },

		["@text.diff.add"] = { fg = colorscheme.lavender },
		["@text.diff.delete"] = { fg = colorscheme.red },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = colorscheme.moss_dark },
		["@string"] = { link = "String" },
		["@string.escape"] = { fg = colorscheme.lime },
		["@string.special"] = { fg = colorscheme.moss_dark },
		["@number"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		["@function"] = {
			link = "Function",
			italic = config.italics.functions or false,
		},
		["@function.call"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		["@parameter"] = { link = "Parameter" },
		["@method"] = { link = "Function" },
		["@field"] = { link = "Property" },
		["@property"] = { link = "Property" },
		["@constructor"] = { fg = colorscheme.yellow_dark },
		["@label"] = { link = "Label" },
		["@operator"] = { link = "Operator" },
		["@exception"] = { link = "Exception" },
		["@variable"] = {
			fg = colorscheme.red,
			italic = config.italics.variables or false,
		},
		["@variable.builtin"] = { fg = colorscheme.lime },
		["@variable.member"] = { fg = colorscheme.lavender },
		["@variable.parameter"] = {
			fg = colorscheme.foreground,
			italic = config.italics.variables or false,
		},
		["@type"] = { link = "Type" },
		["@type.definition"] = { fg = colorscheme.lime_dark },
		["@type.builtin"] = { fg = colorscheme.lime },
		["@type.qualifier"] = { fg = colorscheme.moss_dark },
		["@keyword"] = { link = "Keyword" },
		["@namespace"] = { link = "Type" },
		["@annotation"] = { link = "Label" },
		["@debug"] = { fg = colorscheme.moss_dark },
		["@tag"] = { link = "Tag" },
		["@tag.builtin"] = { link = "Tag" },
		["@tag.delimiter"] = { fg = colorscheme.yellow_dark },
		["@tag.attribute"] = { fg = colorscheme.green },
		["@tag.jsx.element"] = { fg = colorscheme.moss_dark },
		["@attribute"] = { fg = colorscheme.lime_dark },
		["@error"] = { link = "Error" },
		["@warning"] = { link = "WarningMsg" },
		["@info"] = { fg = colorscheme.lime_dark },

		["@label.json"] = { fg = colorscheme.moss_dark },
		["@label.help"] = { link = "@text.uri" },
		["@text.uri.html"] = { underline = true },

		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { fg = colorscheme.moss },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@text" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.macro"] = { link = "@label" },
		["@lsp.type.decorator"] = { link = "@label" },
		["@lsp.typemod.function.declaration"] = { link = "@function" },
		["@lsp.typemod.function.readonly"] = { link = "@function" },
	}

	groups = vim.tbl_extend("force", groups, cmp.highlights(colorscheme) or {})
	groups = vim.tbl_extend("force", groups, ibl.highlights(colorscheme) or {})
	groups = vim.tbl_extend("force", groups, bufferline.highlights(colorscheme, config) or {})

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

function theme.colorscheme()
	if vim.fn.has("nvim-0.8") == 0 then
		vim.notify(
			"Neovim 0.8+ is required for echidna colorscheme",
			vim.log.levels.ERROR,
			{ title = "Hesperus Theme" }
		)
		return
	end

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "echidna"

	local colorscheme = colorscheme_module.pick()

	set_terminal_colors(colorscheme)
	set_groups(colorscheme)
end

return theme
