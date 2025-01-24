local Config = require("nord.config")
local Init = require("nord")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
  Init.styles = {}
end)

it("did prper init", function()
  assert.same({}, Init.styles)
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading respects vim.o.background", function()
  it("= dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nord")
    assert.same("dark", vim.o.background)
    assert.same("nord-dark", vim.g.colors_name)
  end)

  it("= light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nord")
    assert.same("light", vim.o.background)
    assert.same("nord-light", vim.g.colors_name)
  end)

  it("= dark with dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nord")
    assert.same("dark", vim.o.background)
    assert.same("nord-dark", vim.g.colors_name)
  end)

  it("= dark with light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nord-light")
    assert.same("light", vim.o.background)
    assert.same("nord-light", vim.g.colors_name)
  end)

  it("= light with dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nord-dark")
    assert.same("dark", vim.o.background)
    assert.same("nord-dark", vim.g.colors_name)
  end)

  it("= light with light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nord")
    assert.same("light", vim.o.background)
    assert.same("nord-light", vim.g.colors_name)
  end)

  it(" and switches to light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nord")
    vim.o.background = "light"
    assert.same("light", vim.o.background)
    assert.same("nord-light", vim.g.colors_name)
  end)

  it(" and switches to dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nord")
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("nord-dark", vim.g.colors_name)
  end)

  it(" and remembers dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nord")
    vim.o.background = "light"
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("nord-dark", vim.g.colors_name)
  end)
end)
