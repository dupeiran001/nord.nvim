local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.magenta2 },
    LazyProgressTodo = { bold = true, fg = c.fg_gutter },
    LazyDimmed = {fg = c.blue5, italic = true}
  }
end

return M
