local Util = require("nord.util")

local M = {}

M.url = "https://github.com/nvim-neorg/neorg"

---@type nord.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    ["@neorg.headings.1.title"]        = { link = "markdownH1" },
    ["@neorg.headings.1.prefix"]       = { link = "markdownH1" },
    ["@neorg.headings.2.title"]        = { link = "markdownH2" },
    ["@neorg.headings.2.prefix"]       = { link = "markdownH2" },
    ["@neorg.headings.3.title"]        = { link = "markdownH3" },
    ["@neorg.headings.3.prefix"]       = { link = "markdownH3" },
    ["@neorg.headings.4.title"]        = { link = "markdownH4" },
    ["@neorg.headings.4.prefix"]       = { link = "markdownH4" },
    ["@neorg.headings.5.title"]        = { link = "markdownH5" },
    ["@neorg.headings.5.prefix"]       = { link = "markdownH5" },
    ["@neorg.headings.6.title"]        = { link = "markdownH6" },
    ["@neorg.headings.6.prefix"]       = { link = "markdownH6" },

    ["@neorg.quotes.1.prefix.norg"]   = { link = "markdownH1" },
    ["@neorg.quotes.1.content.norg"]   = { link = "markdownH1" },
    ["@neorg.quotes.2.prefix.norg"]   = { link = "markdownH2" },
    ["@neorg.quotes.2.content.norg"]   = { link = "markdownH2" },
    ["@neorg.quotes.3.prefix.norg"]   = { link = "markdownH3" },
    ["@neorg.quotes.3.content.norg"]   = { link = "markdownH3" },
    ["@neorg.quotes.4.prefix.norg"]   = { link = "markdownH4" },
    ["@neorg.quotes.4.content.norg"]   = { link = "markdownH4" },
    ["@neorg.quotes.5.prefix.norg"]   = { link = "markdownH5" },
    ["@neorg.quotes.5.content.norg"]   = { link = "markdownH5" },
    ["@neorg.quotes.6.prefix.norg"]   = { link = "markdownH6" },
    ["@neorg.quotes.6.content.norg"]   = { link = "markdownH6" },
  }
end

return M
