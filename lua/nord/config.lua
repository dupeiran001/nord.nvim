local M = {}

M.version = "0.1.1" -- x-release-please-version

---@class nord.Config
M.defaults = {
  style = "dark", -- The style can ether be 'light' or 'dark'
  transparent = false, -- Whether we should set the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  dim_inactive = false, -- Dims inactive windows
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

  light_brightness = 0.3, -- Adjusts the brightness of the colors of the **light** style. Number between 0 and 1, from dull to vibrant colors

  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = true },
    variables = { bold = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights nord.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  cache = true, -- When set to true, the theme will be cached for better performance

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = false,
    -- add any plugins here that you want to enable
    -- telescope = true,
  },
}

-- @type nord.Config
M.options = nil

---@param options? nord.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? nord.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
