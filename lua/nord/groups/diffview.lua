local M = {}

M.url = "https://github.com/sindrets/diffview.nvim"

---@type nord.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {

    -- TODO:add more highlight groups for diffview

    -- vim.api.nvim_set_hl(0, 'DiffviewWinSeparator', { fg = colors[9] })
    -- vim.api.nvim_set_hl(0, 'DiffviewDiffDelete', { fg = colors[9] })
    -- vim.api.nvim_set_hl(0, 'DiffviewFilePanelSelected', { fg = colors[6] })
    --
    -- vim.api.nvim_set_hl(0, 'DiffviewStatusAdded', { fg = colors[3], bold = true })
    -- vim.api.nvim_set_hl(0, 'DiffviewStatusUntracked', { fg = colors[8], bold = true })
    -- vim.api.nvim_set_hl(0, 'DiffviewStatusModified', { fg = colors[4], bold = true })
    -- vim.api.nvim_set_hl(0, 'DiffviewStatusRenamed', { fg = colors[3], bold = true })
    -- vim.api.nvim_set_hl(0, 'DiffviewStatusDeleted', { fg = colors[2], bold = true })
    -- vim.api.nvim_set_hl(0, 'DiffviewStatusIgnored', { fg = colors[9], bold = true })
  }
end

return M
