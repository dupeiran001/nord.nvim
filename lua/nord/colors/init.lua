local Util = require("nord.util")

local M = {}

---@type table<string, Palette|fun(opts:nord.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("nord.colors." .. style))
  end,
})


---@param opts? nord.Config
function M.setup(opts)
  opts = require("nord.config").extend(opts)

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  Util.light_brightness = opts.light_brightness

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  colors.none = "NONE"

  colors.bg = colors.nord0_gui

  colors.bg_dark = colors.nord1_gui
  colors.bg_dark1 = colors.nord2_gui
  colors.bg_highlight = colors.nord3_gui

  colors.blue = colors.nord9_gui
  colors.blue0 = colors.nord3_gui_bright
  colors.blue1 = colors.nord10_gui
  colors.blue2 = colors.nord9_gui
  colors.blue5 = colors.nord8_gui
  colors.blue6 = colors.nord7_gui
  colors.blue7 = colors.nord3_gui
  colors.comment = colors.nord3_gui_bright
  colors.cyan = colors.nord8_gui
  colors.dark3 = colors.nord3_gui
  colors.dark5 = colors.nord3_gui
  colors.fg = colors.nord4_gui
  colors.fg_dark = colors.nord5_gui
  colors.fg_gutter = colors.nord3_gui_bright
  colors.green = colors.nord14_gui
  colors.green1 = colors.nord7_gui
  colors.green2 = colors.nord8_gui
  colors.magenta = colors.nord15_gui
  colors.magenta2 = colors.nord11_gui
  colors.orange = colors.nord12_gui
  colors.purple = colors.nord15_gui
  colors.red = colors.nord11_gui
  colors.red1 = colors.nord11_gui
  colors.teal = colors.nord7_gui
  colors.terminal_black = colors.nord0_gui
  colors.yellow = colors.nord13_gui
  colors.git = {
    add = colors.nord12_gui,
    change = colors.nord9_gui,
    delete = colors.nord11_gui,
  }

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.diff = {
    add = colors.nord14_gui,
    delete = colors.nord11_gui,
    change = colors.nord9_gui,
    text = colors.nord9_gui,
  }


  colors.git.ignore = colors.nord3_gui
  colors.black = colors.nord0_gui
  colors.border_highlight = colors.nord3_gui_bright
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.nord0_gui
  colors.bg_statusline = colors.nord0_gui

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
      or opts.styles.sidebars == "dark" and colors.nord0_gui
      or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
      or opts.styles.floats == "dark" and colors.bg_dark
      or colors.bg

  colors.bg_visual = Util.blend_bg(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.black,
    black_bright   = colors.terminal_black,
    red            = colors.red,
    red_bright     = Util.brighten(colors.red),
    green          = colors.green,
    green_bright   = Util.brighten(colors.green),
    yellow         = colors.yellow,
    yellow_bright  = Util.brighten(colors.yellow),
    blue           = colors.blue,
    blue_bright    = Util.brighten(colors.blue),
    magenta        = colors.magenta,
    magenta_bright = Util.brighten(colors.magenta),
    cyan           = colors.cyan,
    cyan_bright    = Util.brighten(colors.cyan),
    white          = colors.fg_dark,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
