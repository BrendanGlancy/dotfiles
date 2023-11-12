---@type ChadrcConfig
local M = {}

local highlights = require("custom.highlights")

M.ui = {
  theme = 'kanagawa',
  theme_toggle = { "tokyonight", "catppuccin" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
