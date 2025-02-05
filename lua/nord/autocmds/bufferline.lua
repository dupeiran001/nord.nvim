local M = {}

---@param c ColorScheme
M.setup_bufferline_icon = function(icon_hl_name, icon_color, c)
  if icon_hl_name == nil then
    return
  end

  local skeleton = {
    ["BufferLine" .. icon_hl_name .. "Selected"] = {
      bg = c.bg_dark1,
      fg = icon_color,
    },
    ["BufferLine" .. icon_hl_name] = {
      bg = c.bg,
      fg = icon_color,
    },
    ["BufferLine" .. icon_hl_name .. "Inactive"] = {
      bg = c.bg,
      fg = icon_color,
    },
  }

  return skeleton
end

return M
