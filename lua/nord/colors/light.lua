local Util = require("nord.util")
local palette = require("nord.colors._palette")

local light = {
  nord4_gui = palette.gray, -- nord4 in palette
  nord5_gui = palette.dark_gray, -- nord5 in palette
  nord6_gui = palette.black, -- nord6 in palette

  -- Same colors across light and dark from here down...
  nord7_gui = palette.teal, -- nord7 in palette
  nord8_gui = palette.off_blue, -- nord8 in palette
  nord9_gui = palette.glacier, -- nord9 in palette
  nord10_gui = palette.blue, -- nord10 in palette
  nord11_gui = palette.red, -- nord11 in palette
  nord12_gui = palette.orange, -- nord12 in palette
  nord13_gui = palette.yellow, -- nord13 in palette
  nord14_gui = palette.green, -- nord14 in palette
  nord15_gui = palette.purple, -- nord15 in palette
  light_green = palette.light_green, -- out of palette
  light_red = palette.light_red, -- out of palette
  light_orange = palette.light_orange, -- out of palette
}

local light_dimmed = Util.dimm(light)

---@class Palette
local ret = {
  nord0_gui = palette.white, -- nord0 in palette
  nord1_gui = palette.darker_white, -- nord1 in palette
  nord2_gui = palette.darkest_white, -- nord2 in palette
  nord3_gui = palette.light_gray, -- nord3 in palette
  nord3_gui_bright = palette.light_gray_bright, -- out of palette

  none = "NONE",
}

ret = vim.tbl_deep_extend("error", ret, light_dimmed)

return ret
