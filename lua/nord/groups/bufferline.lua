local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.git.change },
    BufferLineFill = { bg = c.bg },
    BufferLineBackground = { bg = c.bg },

    BufferLineTab = { bg = c.bg },
    BufferLineTabSelected = { bg = c.bg },
    BufferLineTabClose = { bg = c.bg },

    BufferLineTabSeparator = { bg = c.bg, fg = c.dark3 },
    BufferLineTabSeparatorSelected = { bg = c.bg, fg = c.blue1 },

    BufferLineCloseButton = { bg = c.bg },
    BufferLineCloseButtonVisible = { bg = c.bg },
    BufferLineCloseButtonSelected = { bg = c.bg },

    BufferLineBuffer = { bg = c.bg },
    BufferLineBufferVisible = { bg = c.bg },
    BufferLineBufferSelected = { bg = c.bg },

    BufferLineNumbers = { bg = c.bg },
    BufferLineNumbersVisible = { bg = c.bg },
    BufferLineNumbersSelected = { bg = c.bg },

    BufferLineDiagnostic = { bg = c.bg },
    BufferLineDiagnosticVisible = { bg = c.bg },
    BufferLineDiagnosticSelected = { bg = c.bg },

    BufferLineHint = { bg = c.bg },
    BufferLineHintVisible = { bg = c.bg },
    BufferLineHintSelected = { bg = c.bg },

    BufferLineHintDiagnostic = { bg = c.bg },
    BufferLineHintDiagnosticVisible = { bg = c.bg },
    BufferLineHintDiagnosticSelected = { bg = c.bg },

    BufferLineInfo = { bg = c.bg },
    BufferLineInfoVisible = { bg = c.bg },
    BufferLineInfoSelected = { bg = c.bg },

    info_diagnostic = { bg = c.bg },
    info_diagnostic_visible = { bg = c.bg },
    info_diagnostic_selected = { bg = c.bg },

    warning = { bg = c.bg },
    warning_visible = { bg = c.bg },
    warning_selected = { bg = c.bg },

    warning_diagnostic = { bg = c.bg },
    warning_diagnostic_visible = { bg = c.bg },
    warning_diagnostic_selected = { bg = c.bg },

    error = { bg = c.bg },
    error_visible = { bg = c.bg },
    error_selected = { bg = c.bg },

    error_diagnostic = { bg = c.bg },
    error_diagnostic_visible = { bg = c.bg },
    error_diagnostic_selected = { bg = c.bg },

    duplicate = { bg = c.bg },
    duplicate_visible = { bg = c.bg },
    duplicate_selected = { bg = c.bg },

    separator = { bg = c.bg, fg = c.dark3 },
    separator_selected = { bg = c.bg },
    separator_visible = { bg = c.bg },

    modified = { bg = c.bg },
    modified_visible = { bg = c.bg },
    modified_selected = { bg = c.bg },

    indicator_selected = { bg = c.bg },
    indicator_visible = { bg = c.bg },

    pick = { bg = c.bg },
    pick_visible = { bg = c.bg },
    pick_selected = { bg = c.bg },

    offset_separator = { bg = c.bg },

    trunc_marker = { bg = c.bg },


  }
end

return M
