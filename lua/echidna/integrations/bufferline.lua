local M = {}

function M.highlights(colorscheme, config)
	local bg = config.transparent and "NONE" or colorscheme.editorBackground
	return {
		BufferLineBackground = { bg = bg },
		BufferLineBufferVisible = { fg = colorscheme.lineNumberText, bg = bg },
		BufferLineBufferSelected = {
			fg = colorscheme.mainText,
			bg = colorscheme.editorBackground,
		},
		BufferLineDuplicate = {
			fg = colorscheme.mainText,
			bg = bg,
			italic = config.italics.bufferline or false,
		},
		BufferLineDuplicateVisible = {
			fg = colorscheme.mainText,
			bg = bg,
			italic = config.italics.bufferline or false,
		},
		BufferLineDuplicateSelected = {
			fg = colorscheme.mainText,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},

		BufferLineTab = { fg = colorscheme.mainText, bg = bg },
		BufferLineTabSelected = {
			fg = colorscheme.mainText,
			bg = colorscheme.editorBackground,
		},
		BufferLineTabClose = { fg = colorscheme.syntaxError, bg = bg },
		BufferLineIndicatorSelected = {
			fg = colorscheme.syntaxFunction,
			bg = colorscheme.editorBackground,
			bold = true,
		},

		BufferLineSeparator = { fg = colorscheme.editorBackground, bg = bg },
		BufferLineSeparatorSelected = {
			fg = colorscheme.editorBackground,
			bg = colorscheme.editorBackground,
		},
		BufferLineSeparatorVisible = { fg = colorscheme.editorBackground, bg = bg },
		BufferLineOffsetSeparator = { fg = colorscheme.editorBackground, bg = bg },
		BufferLineTabSeparator = { fg = colorscheme.editorBackground, bg = bg },
		BufferLineTabSeparatorSelected = {
			fg = colorscheme.editorBackground,
			bg = colorscheme.editorBackground,
		},

		BufferLineCloseButton = { fg = colorscheme.lineNumberText, bg = bg },
		BufferLineCloseButtonVisible = { fg = colorscheme.syntaxError, bg = bg },
		BufferLineCloseButtonSelected = {
			fg = colorscheme.syntaxError,
			bg = colorscheme.editorBackground,
		},

		BufferLineFill = { bg = bg },

		BufferLineNumbers = { fg = colorscheme.lineNumberText, bg = bg },
		BufferLineNumbersVisible = { fg = colorscheme.lineNumberText, bg = bg },
		BufferLineNumbersSelected = {
			fg = colorscheme.mainText,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},

		BufferLineError = { fg = colorscheme.syntaxError, bg = bg },
		BufferLineErrorVisible = { fg = colorscheme.syntaxError, bg = bg },
		BufferLineErrorSelected = {
			fg = colorscheme.syntaxError,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},
		BufferLineErrorDiagnostic = { fg = colorscheme.syntaxError, bg = bg },
		BufferLineErrorDiagnosticVisible = { fg = colorscheme.syntaxError, bg = bg },
		BufferLineErrorDiagnosticSelected = {
			fg = colorscheme.syntaxError,
			bg = colorscheme.editorBackground,
		},

		BufferLineWarning = { fg = colorscheme.warningEmphasis, bg = bg },
		BufferLineWarningVisible = { fg = colorscheme.warningEmphasis, bg = bg },
		BufferLineWarningSelected = {
			fg = colorscheme.warningEmphasis,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},
		BufferLineWarningDiagnostic = { fg = colorscheme.warningEmphasis, bg = bg },
		BufferLineWarningDiagnosticVisible = { fg = colorscheme.warningEmphasis, bg = bg },
		BufferLineWarningDiagnosticSelected = {
			fg = colorscheme.warningEmphasis,
			bg = colorscheme.editorBackground,
		},

		BufferLineInfo = { fg = colorscheme.syntaxFunction, bg = bg },
		BufferLineInfoVisible = { fg = colorscheme.syntaxFunction, bg = bg },
		BufferLineInfoSelected = {
			fg = colorscheme.syntaxFunction,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},
		BufferLineInfoDiagnostic = { fg = colorscheme.syntaxFunction, bg = bg },
		BufferLineInfoDiagnosticVisible = { fg = colorscheme.syntaxFunction, bg = bg },
		BufferLineInfoDiagnosticSelected = {
			fg = colorscheme.syntaxFunction,
			bg = colorscheme.editorBackground,
		},

		BufferLineHint = { fg = colorscheme.successText, bg = bg },
		BufferLineHintVisible = { fg = colorscheme.successText, bg = bg },
		BufferLineHintSelected = {
			fg = colorscheme.successText,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},
		BufferLineHintDiagnostic = { fg = colorscheme.successText, bg = bg },
		BufferLineHintDiagnosticVisible = { fg = colorscheme.successText, bg = bg },
		BufferLineHintDiagnosticSelected = {
			fg = colorscheme.successText,
			bg = colorscheme.editorBackground,
		},

		BufferLineDiagnostic = { fg = colorscheme.lineNumberText, bg = bg },
		BufferLineDiagnosticVisible = { fg = colorscheme.lineNumberText, bg = bg },
		BufferLineDiagnosticSelected = {
			fg = colorscheme.lineNumberText,
			bg = colorscheme.editorBackground,
			italic = config.italics.bufferline or false,
		},

		BufferLineModified = { fg = colorscheme.warningText, bg = bg },
		BufferLineModifiedSelected = {
			fg = colorscheme.warningText,
			bg = colorscheme.editorBackground,
		},
	}
end

return M
