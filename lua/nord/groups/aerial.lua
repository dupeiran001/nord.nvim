local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide  = { fg = c.fg_gutter },
    AerialLine   = "LspInlayHint",
  }
  require("nord.groups.kinds").kinds(ret, "Aerial%sIcon")
  return ret
end

return M
