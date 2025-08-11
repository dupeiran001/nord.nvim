local config = require("nord.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? nord.Config
function M.load(opts)
  opts = require("nord.config").extend(opts)

  -- Determine the style based on vim.o.background if not explicitly set in opts
  if not opts.style then
    opts.style = vim.o.background == "light" and "light" or "dark"
  end

  -- Always set the background to the determined style
  vim.o.background = opts.style == "light" and "light" or "dark"

  -- Cache the style for later reference
  M.styles[vim.o.background] = opts.style

  return require("nord.theme").setup(opts)
end

M.setup = config.setup

return M
