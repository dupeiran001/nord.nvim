local config = require("nord.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? nord.Config
function M.load(opts)
  opts = require("nord.config").extend(opts)
  -- Determine the background based on the chosen style
  local style_bg = opts.style == "light" and "light" or "dark"

  -- Always set the background to the determined style
  vim.o.background = style_bg

  -- Cache the style for later reference (if needed, though simplified logic might reduce its importance)
  M.styles[vim.o.background] = opts.style

  -- Load and apply the theme with the chosen options
  return require("nord.theme").setup(opts)
end

M.setup = config.setup

return M
