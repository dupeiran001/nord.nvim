local Util = require("nord.util")

local M = {}

M.url = "https://github.com/lukas-reineke/headlines.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    CodeBlock = { bg = c.bg_dark },
    Headline1 = { link = "markdownH1" },
    Headline2 = { link = "markdownH2" },
    Headline3 = { link = "markdownH3" },
    Headline4 = { link = "markdownH4" },
    Headline5 = { link = "markdownH5" },
    Headline6 = { link = "markdownH6" },
  }
end

return M
