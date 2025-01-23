local nord = {
  --16 colors
  nord0 = "#2E3440",        -- nord0 in palette
  nord1 = "#3B4252",        -- nord1 in palette
  nord2 = "#434C5E",        -- nord2 in palette
  nord3 = "#4C566A",        -- nord3 in palette
  nord3_bright = "#616E88", -- out of palette
  nord4 = "#D8DEE9",        -- nord4 in palette
  nord5 = "#E5E9F0",        -- nord5 in palette
  nord6 = "#ECEFF4",        -- nord6 in palette
  nord7 = "#8FBCBB",        -- nord7 in palette
  nord8 = "#88C0D0",        -- nord8 in palette
  nord9 = "#81A1C1",        -- nord9 in palette
  nord10 = "#5E81AC",       -- nord10 in palette
  nord11 = "#BF616A",       -- nord11 in palette
  nord12 = "#D08770",       -- nord12 in palette
  nord13 = "#EBCB8B",       -- nord13 in palette
  nord14 = "#A3BE8C",       -- nord14 in palette
  nord15 = "#B48EAD",       -- nord15 in palette
  none = "NONE",
}

return {
  fill = {
    fg = nord.nord4,
    bg = nord.nord0,
  },
  background = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  tab = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  tab_selected = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  tab_separator = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  tab_separator_selected = {
    fg = nord.nord8,
    bg = nord.nord0,
    -- sp = ,
    -- underline = '<colour-value-here>',
  },
  tab_close = {
    fg = nord.nord4,
    bg = nord.nord0,
  },
  close_button = {
    fg = nord.nord3,
    bg = nord.nord0,
  },
  close_button_visible = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  close_button_selected = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  buffer_visible = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
  },
  buffer_selected = {
    fg = nord.nord8,
    bg = nord.nord0,
    bold = true,
    italic = true,
  },
  numbers = {
    fg = nord.nord15,
    bg = nord.nord0,
  },
  numbers_visible = {
    fg = nord.nord15,
    bg = nord.nord0,
  },
  numbers_selected = {
    fg = nord.nord15,
    bg = nord.nord0,
    bold = true,
    italic = true,
  },
  diagnostic = {
    fg = nord.nord4,
    bg = nord.nord0,
  },
  diagnostic_visible = {
    fg = nord.nord4,
    bg = nord.nord0,
  },
  diagnostic_selected = {
    fg = nord.nord4,
    bg = nord.nord0,
    bold = true,
    italic = true,
  },
  hint = {
    fg = nord.nord15,
    -- sp = '<colour-value-here>',
    bg = nord.nord0,
  },
  hint_visible = {
    fg = nord.nord15,
    bg = nord.nord0,
  },
  hint_selected = {
    fg = nord.nord15,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  hint_diagnostic = {
    fg = nord.nord15,
    -- sp = '<colour-value-here>',
    bg = nord.nord0,
  },
  hint_diagnostic_visible = {
    fg = nord.nord15,
    bg = nord.nord0,
  },
  hint_diagnostic_selected = {
    fg = nord.nord15,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  info = {
    fg = nord.nord14,
    -- sp = '<colour-value-here>',
    bg = nord.nord0,
  },
  info_visible = {
    fg = nord.nord14,
    bg = nord.nord0,
  },
  info_selected = {
    fg = nord.nord14,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  info_diagnostic = {
    fg = nord.nord14,
    -- sp = '<colour-value-here>',
    bg = nord.nord0,
  },
  info_diagnostic_visible = {
    fg = nord.nord14,
    bg = nord.nord0,
  },
  info_diagnostic_selected = {
    fg = nord.nord14,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  warning = {
    fg = nord.nord12,
    -- sp = '<colour-value-here>',
    bg = nord.nord0,
  },
  warning_visible = {
    fg = nord.nord12,
    bg = nord.nord0,
  },
  warning_selected = {
    fg = nord.nord12,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  warning_diagnostic = {
    fg = nord.nord12,
    -- sp = '<colour-value-here>',
    bg = nord.nord0,
  },
  warning_diagnostic_visible = {
    fg = nord.nord12,
    bg = nord.nord0,
  },
  warning_diagnostic_selected = {
    fg = nord.nord12,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  error = {
    fg = nord.nord11,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
  },
  error_visible = {
    fg = nord.nord11,
    bg = nord.nord0,
  },
  error_selected = {
    fg = nord.nord11,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  error_diagnostic = {
    fg = nord.nord11,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
  },
  error_diagnostic_visible = {
    fg = nord.nord11,
    bg = nord.nord0,
  },
  error_diagnostic_selected = {
    fg = nord.nord11,
    bg = nord.nord0,
    -- sp = '<colour-value-here>',
    bold = true,
    italic = true,
  },
  modified = {
    fg = nord.nord15,
    bg = nord.nord0,
  },
  modified_visible = {
    fg = nord.nord15,
    bg = nord.nord0,
  },
  modified_selected = {
    fg = nord.nord8,
    bg = nord.nord0,
  },
  duplicate_selected = {
    fg = nord.nord3_bright,
    bg = nord.nord0,
    italic = true,
  },
  duplicate_visible = {
    fg = nord.nord3,
    bg = nord.nord0,
    italic = true,
  },
  duplicate = {
    fg = nord.nord3,
    bg = nord.nord0,
    italic = true,
  },
  separator_selected = {
    fg = nord.nord8,
    bg = nord.nord0,
    bold = true,
  },
  separator_visible = {
    fg = nord.nord3,
    bg = nord.nord0,
  },
  separator = {
    fg = nord.nord3,
    bg = nord.nord0,
  },
  indicator_visible = {
    fg = nord.nord4,
    bg = nord.nord0,
  },
  indicator_selected = {
    fg = nord.nord4,
    bg = nord.nord0,
  },
  pick_selected = {
    fg = nord.nord4,
    bg = nord.nord0,
    bold = true,
    italic = true,
  },
  pick_visible = {
    fg = nord.nord4,
    bg = nord.nord0,
    bold = true,
    italic = true,
  },
  pick = {
    fg = nord.nord4,
    bg = nord.nord0,
    bold = true,
    italic = true,
  },
  offset_separator = {
    fg = nord.nord3,
    bg = nord.nord0,
  },
  trunc_marker = {
    fg = nord.nord3,
    bg = nord.nord0,
  }
}
