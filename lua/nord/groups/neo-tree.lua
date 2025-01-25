local Util = require("nord.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeDimText              = { fg = c.fg_gutter },
    NeoTreeFileName             = { fg = c.fg_sidebar },
    NeoTreeGitModified          = { fg = c.yellow },
    NeoTreeGitStaged            = { fg = c.green1 },
    NeoTreeGitUntracked         = { fg = c.magenta },
    NeoTreeNormal               = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC             = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive            = { fg = c.blue2, bg = c.bg, bold = true },
    NeoTreeTabInactive          = { fg = c.fg_gutter, bg = c.bg },
    NeoTreeTabSeparatorActive   = { fg = c.blue2, bg = c.bg },
    NeoTreeTabSeparatorInactive = { fg = c.fg_gutter, bg = c.bg },
  }
end

return M
