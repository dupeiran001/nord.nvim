local nord = {
  --16 colors
  black = "#2E3440",             -- nord0 in palette
  dark_gray = "#3B4252",         -- nord1 in palette
  gray = "#434C5E",              -- nord2 in palette
  light_gray = "#4C566A",        -- nord3 in palette
  light_gray_bright = "#616E88", -- out of palette
  darkest_white = "#D8DEE9",     -- nord4 in palette
  darker_white = "#E5E9F0",      -- nord5 in palette
  white = "#ECEFF4",             -- nord6 in palette
  teal = "#8FBCBB",              -- nord7 in palette
  off_blue = "#88C0D0",          -- nord8 in palette
  glacier = "#81A1C1",           -- nord9 in palette
  blue = "#5E81AC",              -- nord10 in palette
  red = "#BF616A",               -- nord11 in palette
  orange = "#D08770",            -- nord12 in palette
  yellow = "#EBCB8B",            -- nord13 in palette
  green = "#A3BE8C",             -- nord14 in palette
  purple = "#B48EAD",            -- nord15 in palette
  none = "NONE",
}

local dark_colors = {
  nord0_gui = nord.black,                    -- nord0 in palette
  nord1_gui = nord.dark_gray,                -- nord1 in palette
  nord2_gui = nord.gray,                     -- nord2 in palette
  nord3_gui = nord.light_gray,               -- nord3 in palette
  nord3_gui_bright = nord.light_gray_bright, -- out of palette
  nord4_gui = nord.darkest_white,            -- nord4 in palette
  nord5_gui = nord.darker_white,             -- nord5 in palette
  nord6_gui = nord.white,                    -- nord6 in palette
  nord7_gui = nord.teal,                     -- nord7 in palette
  nord8_gui = nord.off_blue,                 -- nord8 in palette
  nord9_gui = nord.glacier,                  -- nord9 in palette
  nord10_gui = nord.blue,                    -- nord10 in palette
  nord11_gui = nord.red,                     -- nord11 in palette
  nord12_gui = nord.orange,                  -- nord12 in palette
  nord13_gui = nord.yellow,                  -- nord13 in palette
  nord14_gui = nord.green,                   -- nord14 in palette
  nord15_gui = nord.purple,                  -- nord15 in palette
  none = "NONE",

}

local light_colors = {
  nord0_gui = nord.white,                    -- nord0 in palette
  nord1_gui = nord.darker_white,             -- nord1 in palette
  nord2_gui = nord.darkest_white,            -- nord2 in palette
  nord3_gui = nord.light_gray,               -- nord3 in palette
  nord3_gui_bright = nord.light_gray_bright, -- out of palette
  nord4_gui = nord.gray,                     -- nord4 in palette
  nord5_gui = nord.dark_gray,                -- nord5 in palette
  nord6_gui = nord.black,                    -- nord6 in palette

  -- Same colors across light and dark from here down...
  nord7_gui = nord.teal,     -- nord7 in palette
  nord8_gui = nord.off_blue, -- nord8 in palette
  nord9_gui = nord.glacier,  -- nord9 in palette
  nord10_gui = nord.blue,    -- nord10 in palette
  nord11_gui = nord.red,     -- nord11 in palette
  nord12_gui = nord.orange,  -- nord12 in palette
  nord13_gui = nord.yellow,  -- nord13 in palette
  nord14_gui = nord.green,   -- nord14 in palette
  nord15_gui = nord.purple,  -- nord15 in palette
  none = "NONE",
}


return {
  light_colors = { named_colors = nord, nord = light_colors, none = "NONE" },
  dark_colors = { named_colors = nord, nord = dark_colors, none = "NONE" },
}
