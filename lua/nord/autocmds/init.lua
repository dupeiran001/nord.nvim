local M = {}

local Util = require("nord.util")

local function augroup(name)
  return vim.api.nvim_create_augroup("Nord$" .. name, { clear = true })
end

---@param colors ColorScheme
function M.setup(colors)
  -- Autocommand to reload colorscheme when vim.o.background changes
  vim.api.nvim_create_autocmd("OptionSet", {
    group = augroup("background_change"),
    pattern = "background",
    callback = function()
      require("nord").load({ style = vim.o.background })
    end,
  })

  -- draw bufferline icons
  vim.api.nvim_create_autocmd({ "ColorScheme", "BufEnter" }, {
    group = augroup("bufferline"),
    pattern = "*",
    callback = function()
      local buffers = vim.api.nvim_list_bufs()
      for _, buf_id in ipairs(buffers) do
        local buf_name = vim.api.nvim_buf_get_name(buf_id)
        -- Get extension
        local filename = vim.fn.fnamemodify(buf_name, ":t")
        local extension = vim.fn.fnamemodify(buf_name, ":e")
        local icon = Util.devicon_get(filename, extension)
        if icon == nil then
          return
        end
        local bufferline_icon_group =
          require("nord.autocmds.bufferline").setup_bufferline_icon(icon.hl_name, icon.color, colors)

        for group, hl in pairs(bufferline_icon_group) do
          hl = type(hl) == "string" and { link = hl } or hl
          vim.api.nvim_set_hl(0, group, hl)
        end
      end
    end,
  })
end

return M
