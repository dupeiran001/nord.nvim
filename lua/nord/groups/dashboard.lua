local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.blue },
    DashboardFooter           = { fg = c.blue1 },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.fg },
    DashboardProjectTitleIcon = { fg = c.green },
    DashboardProjectIcon      = { fg = c.yellow },
    DashboardMruTitle         = { fg = c.fg },
    DashboardMruIcon          = { fg = c.purple },
    DashboardFiles            = { fg = c.fg },
    DashboardShortCutIcon     = { fg = c.blue6 },
    -- Doome theme
    DashboardDesc             = { fg = c.fg },
    DashboardKey              = { fg = c.blue6 },
    DashboardIcon             = { fg = c.blue2 },
    DashboardShortCut         = { fg = c.blue6 },
  }
end

return M
