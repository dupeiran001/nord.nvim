local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.magenta },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal    = { bg = c.bg_float },
    WhichKeyValue     = { fg = c.dark5 },
    WhichKeyBorder    = { fg = c.fg, bg = c.bg_float },
  }
end

return M
