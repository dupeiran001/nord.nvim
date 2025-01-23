local config = {

  variant = nil, --  ether 'dark' or 'light'

  italic = true,
  italic_undercurl = true,
  bold = true,

  terminal = true,

  contrast = true,
  borders = true,             -- Split window borders
  disable = {
    background = false,       -- Disable setting the background color
    float_background = false, -- Disable setting the background color for floating windows
    cursorline = false,       -- Disable the cursorline
    eob_lines = true,         -- Hide the end-of-buffer lines
  },
  -- Inverse highlight for different groups
  inverse = {
    match_paren = false,
  },
}

function config.set_options(opts)
  config.options = vim.tbl_deep_extend("force", config.options or {}, opts or {})
end

return config
