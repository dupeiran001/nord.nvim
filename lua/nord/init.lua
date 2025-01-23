local config = require("nord.config")
local bufferline = require("nord.bufferline")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? nord.Config
function M.load(opts)
  opts = require("nord.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "light" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "nord-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "light") or (M.styles.dark or "dark")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style
  return require("nord.theme").setup(opts)
end

M.setup = config.setup
M.bufferline = bufferline

return M
