local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineFill = {
      fg = c.fg,
      bg = c.bg,
    },
    BufferLineBackground = {
      fg = c.fg_gutter,
      bg = c.bg,
    },
    BufferLineTab = {
      fg = c.fg_gutter,
      bg = c.bg,
    },
    BufferLineTabSelected = {
      fg = c.fg_gutter,
      bg = c.bg_dark1,
    },
    BufferLineTabSeparator = {
      fg = c.fg_gutter,
      bg = c.bg,
    },
    BufferLineTabSeparatorSelected = {
      fg = c.blue5,
      bg = c.bg_dark1,
      -- sp = ,
      -- underline = '<colour-value-here>',
    },
    BufferLineTabClose = {
      fg = c.fg,
      bg = c.bg,
    },
    BufferLineCloseButton = {
      fg = c.comment,
      bg = c.bg,
    },
    BufferLineCloseButtonVisible = {
      fg = c.fg_gutter,
      bg = c.bg,
    },
    BufferLineCloseButtonSelected = {
      fg = c.fg_gutter,
      bg = c.bg_dark1,
    },

    BufferLineBufferVisible = {
      fg = c.fg_gutter,
      bg = c.bg,
    },
    BufferLineBufferSelected = {
      fg = c.blue5,
      bg = c.bg_dark1,
      bold = true,
      italic = true,
    },
    BufferLineNumbers = {
      fg = c.purple,
      bg = c.bg,
    },
    BufferLineNumbersVisible = {
      fg = c.purple,
      bg = c.bg,
    },
    BufferLineNumbersSelected = {
      fg = c.purple,
      bg = c.bg_dark1,
      bold = true,
      italic = true,
    },
    BufferLineDiagnostic = {
      fg = c.fg,
      bg = c.bg,
    },
    BufferLineDiagnosticVisible = {
      fg = c.fg,
      bg = c.bg,
    },
    BufferLineDiagnosticSelected = {
      fg = c.fg,
      bg = c.bg_dark1,
      bold = true,
      italic = true,
    },
    BufferLineHint = {
      fg = c.purple,
      -- sp = '<colour-value-here>',
      bg = c.bg,
    },
    BufferLineHintVisible = {
      fg = c.purple,
      bg = c.bg,
    },
    BufferLineHintSelected = {
      fg = c.purple,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineHintDiagnostic = {
      fg = c.purple,
      -- sp = '<colour-value-here>',
      bg = c.bg,
    },
    BufferLineHintDiagnosticVisible = {
      fg = c.purple,
      bg = c.bg,
    },
    BufferLineHintDiagnosticSelected = {
      fg = c.purple,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineInfo = {
      fg = c.green,
      -- sp = '<colour-value-here>',
      bg = c.bg,
    },
    BufferLineInfoVisible = {
      fg = c.green,
      bg = c.bg,
    },
    BufferLineInfoSelected = {
      fg = c.green,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineInfoDiagnostic = {
      fg = c.green,
      -- sp = '<colour-value-here>',
      bg = c.bg,
    },
    BufferLineInfoDiagnosticVisible = {
      fg = c.green,
      bg = c.bg,
    },
    BufferLineInfoDiagnosticSelected = {
      fg = c.green,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineWarning = {
      fg = c.orange,
      -- sp = '<colour-value-here>',
      bg = c.bg,
    },
    BufferLineWarningVisible = {
      fg = c.orange,
      bg = c.bg,
    },
    BufferLineWarningSelected = {
      fg = c.orange,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineWarningDiagnostic = {
      fg = c.orange,
      -- sp = '<colour-value-here>',
      bg = c.bg,
    },
    BufferLineWarningDiagnosticVisible = {
      fg = c.orange,
      bg = c.bg,
    },
    BufferLineWarningDiagnosticSelected = {
      fg = c.orange,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineError = {
      fg = c.red,
      bg = c.bg,
      -- sp = '<colour-value-here>',
    },
    BufferLineErrorVisible = {
      fg = c.red,
      bg = c.bg,
    },
    BufferLineErrorSelected = {
      fg = c.red,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineErrorDiagnostic = {
      fg = c.red,
      bg = c.bg,
      -- sp = '<colour-value-here>',
    },
    BufferLineErrorDiagnosticVisible = {
      fg = c.red,
      bg = c.bg,
    },
    BufferLineErrorDiagnosticSelected = {
      fg = c.red,
      bg = c.bg_dark1,
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    BufferLineModified = {
      fg = c.purple,
      bg = c.bg,
    },
    BufferLineModifiedVisible = {
      fg = c.purple,
      bg = c.bg,
    },
    BufferLineModifiedSelected = {
      fg = c.blue5,
      bg = c.bg_dark1,
    },
    BufferLineDuplicateSelected = {
      fg = c.fg_gutter,
      bg = c.bg_dark1,
      italic = true,
    },
    BufferLineDuplicateVisible = {
      fg = c.comment,
      bg = c.bg,
      italic = true,
    },
    BufferLineDuplicate = {
      fg = c.comment,
      bg = c.bg,
      italic = true,
    },
    BufferLineSeparatorSelected = {
      fg = c.blue5,
      bg = c.bg_dark1,
      bold = true,
    },
    BufferLineSeparatorVisible = {
      fg = c.comment,
      bg = c.bg,
    },
    BufferLineSeparator = {
      fg = c.comment,
      bg = c.bg,
    },
    BufferLineIndicatorVisible = {
      fg = c.fg,
      bg = c.bg,
    },
    BufferLineIndicatorSelected = {
      fg = c.blue5,
      bg = c.bg_dark1,
    },
    BufferLinePickSelected = {
      fg = c.fg,
      bg = c.bg_dark1,
      bold = true,
      italic = true,
    },
    BufferLinePickVisible = {
      fg = c.fg,
      bg = c.bg,
      bold = true,
      italic = true,
    },
    BufferLinePick = {
      fg = c.fg,
      bg = c.bg,
      bold = true,
      italic = true,
    },
    BufferLineOffsetSeparator = {
      fg = c.comment,
      bg = c.bg,
    },
    BufferLineTruncMarker = {
      fg = c.comment,
      bg = c.bg,
    }

  }
end

return M
