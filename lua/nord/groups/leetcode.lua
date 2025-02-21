local M = {}

M.url = "https://github.com/kawre/leetcode.nvim"

-- TODO:wait for upper stream: do not override existing colorscheme
---@type nord.HighlightsFn
function M.get(c, opts)
  return {
    -- stylua: ignore
    leetcode_ = { fg = c.fg, bg = c.bg },
    leetcode_hard = { fg = c.red },
    leetcode_medium = { fg = c.orange },
    leetcode_all = { fg = c.fg },
    leetcode_easy = { fg = c.teal },
    leetcode_example = { fg = c.blue2 },
    leetcode_constraints = { fg = c.blue2 },
    leetcode_ok = { fg = c.green2 },
    leetcode_indent = { fg = c.blue1 },
    leetcode_followup = { fg = "#ebcb8b", bold = true },
    leetcode_link = { underline = true, fg = c.blue2 },
    leetcode_info = { fg = c.blue2 },
    leetcode_normal = { fg = c.fg },
    -- leetcode_all_alt xxx guifg=#45475b
    -- leetcode_alt   xxx guibg=#2e3440
    -- leetcode_calendar_100 xxx guifg=#d8ffda
    -- leetcode_code  xxx guifg=#5e81ac guibg=#2e3440
    -- leetcode_header xxx cterm=bold gui=bold guifg=#5e81ac
    -- leetcode_case_focus_err xxx cterm=bold gui=bold guifg=#2e3440 guibg=#bf616a
    -- leetcode_calendar_70 xxx guifg=#51d164
    -- leetcode_italic xxx cterm=italic gui=italic
    -- leetcode_calendar_60 xxx guifg=#28c244
    -- leetcode_calendar_80 xxx guifg=#7fe18b
    -- leetcode_ref   xxx guifg=#5e81ac
    -- leetcode_list  xxx guifg=#5e81ac
    -- leetcode_calendar_40 xxx guifg=#109932
    -- leetcode_calendar_90 xxx guifg=#b3f0b8
    -- leetcode_calendar_30 xxx guifg=#078029
    -- leetcode_easy_alt xxx guifg=#294d35
    -- leetcode_calendar_20 xxx guifg=#016620
    -- leetcode_case_focus_ok xxx cterm=bold gui=bold guifg=#2e3440 guibg=#b3f6c0
    -- leetcode_calendar_10 xxx guifg=#004d1b
    -- leetcode_hint  xxx guifg=#8fbcbb
    -- leetcode_calendar_0 xxx guifg=#45475b
    -- leetcode_error xxx guifg=#bf616a
    -- leetcode_medium_alt xxx guifg=#5e4e25
    -- leetcode_bold  xxx cterm=bold gui=bold
    -- leetcode_underline xxx cterm=underline gui=underline
    -- leetcode_case_err xxx cterm=bold gui=bold guifg=#bf616a guibg=#2e3440
    -- leetcode_case_ok xxx cterm=bold gui=bold guifg=#b3f6c0 guibg=#2e3440
    -- leetcode_hard_alt xxx guifg=#5a302f
    -- leetcode_calendar_50 xxx guifg=#1cb33d
    -- leetcode_su    xxx guifg=#ebcb8b
  }
end

return M
