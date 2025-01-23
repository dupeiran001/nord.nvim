local util = require('nord.util')
local config = require('nord.config')

local nord = {}

function nord.setup(options)
  config.set_options(options)
  nord.load(true)
end

function nord.load(exec_autocmd)
  local colors = require("nord.colors")

  util.load(colors, exec_autocmd, config)
end

return nord
