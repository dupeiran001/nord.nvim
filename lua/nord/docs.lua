local Docs = require("lazy.docs")
local Groups = require("nord.groups")

local M = {}

local function link(name, url)
  return "[" .. name .. "](" .. url .. ")"
end

function M.row(t)
  return "| " .. table.concat(t, " | ") .. " |"
end

---@param t string[][]
function M.table(t)
  local header = table.remove(t, 1)
  local lines = {} ---@type string[]
  lines[#lines + 1] = M.row(header)
  lines[#lines + 1] = M.row({ "---", "---" })
  for _, row in ipairs(t) do
    lines[#lines + 1] = M.row(row)
  end
  return table.concat(lines, "\n")
end

function M.plugins()
  local t = {
    { "Plugin", "Source" },
  }
  local names = vim.tbl_values(Groups.plugins) ---@type string[]
  table.sort(names)
  for _, name in ipairs(names) do
    local group = Groups.get_group(name)
    local repo = group.url:match("[^/]*$")
    t[#t + 1] = {
      link(repo, group.url),
      link(("`%s`"):format(name), "lua/nord/groups/" .. name .. ".lua"),
    }
  end
  return M.table(t)
end

function M.update()
  local config = Docs.extract("lua/nord/config.lua", "\n(--@class nord%.Config.-\n})")
  config = config:gsub("%s*debug = false.\n", "\n")
  Docs.save({
    config = config,
    plugins = { content = M.plugins() },
  })
end

M.update()
print("Docs updated")

return M
