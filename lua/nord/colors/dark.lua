local palette = require("nord.colors._palette")

---@class Palette
local ret = {
  nord0_gui = palette.black, -- nord0 in palette
  nord1_gui = palette.dark_gray, -- nord1 in palette
  nord2_gui = palette.gray, -- nord2 in palette
  nord3_gui = palette.light_gray, -- nord3 in palette
  nord3_gui_bright = palette.light_gray_bright, -- out of palette
  nord3_gui_brightest = palette.light_gray_suprtbright, -- out of palette
  nord4_gui = palette.darkest_white, -- nord4 in palette
  nord5_gui = palette.darker_white, -- nord5 in palette
  nord6_gui = palette.white, -- nord6 in palette
  nord7_gui = palette.teal, -- nord7 in palette
  nord8_gui = palette.off_blue, -- nord8 in palette
  nord9_gui = palette.glacier, -- nord9 in palette
  nord10_gui = palette.blue, -- nord10 in palette
  nord11_gui = palette.red, -- nord11 in palette
  nord12_gui = palette.orange, -- nord12 in palette
  nord13_gui = palette.yellow, -- nord13 in palette
  nord14_gui = palette.green, -- nord14 in palette
  nord15_gui = palette.purple, -- nord15 in palette
  none = "NONE",
}
return ret
