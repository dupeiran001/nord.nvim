---@class nord.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias nord.Highlights table<string,nord.Highlight|string>
---
---@alias nord.HighlightsFn fun(colors: ColorScheme, opts:nord.Config):nord.Highlights

---@class nord.Cache
---@field groups nord.Highlights
---@field inputs table
