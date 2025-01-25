local Util = require("nord.util")
local plate = require("nord.colors.plate")

local light = {
  nord4_gui = plate.gray, -- nord4 in palette
  nord5_gui = plate.dark_gray, -- nord5 in palette
  nord6_gui = plate.black, -- nord6 in palette

  -- Same colors across light and dark from here down...
  nord7_gui = plate.teal, -- nord7 in palette
  nord8_gui = plate.off_blue, -- nord8 in palette
  nord9_gui = plate.glacier, -- nord9 in palette
  nord10_gui = plate.blue, -- nord10 in palette
  nord11_gui = plate.red, -- nord11 in palette
  nord12_gui = plate.orange, -- nord12 in palette
  nord13_gui = plate.yellow, -- nord13 in palette
  nord14_gui = plate.green, -- nord14 in palette
  nord15_gui = plate.purple, -- nord15 in palette
}

local light_dimmed = Util.dimm(light)

---@class Palette
local ret = {
  nord0_gui = plate.white, -- nord0 in palette
  nord1_gui = plate.darker_white, -- nord1 in palette
  nord2_gui = plate.darkest_white, -- nord2 in palette
  nord3_gui = plate.light_gray, -- nord3 in palette
  nord3_gui_bright = plate.light_gray_bright, -- out of palette

  none = "NONE",
}

ret = vim.tbl_deep_extend("error", ret, light_dimmed)

return ret
