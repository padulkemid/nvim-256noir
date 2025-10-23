local M = {}

function M.setup()
  -- Set terminal colors
  vim.g.terminal_color_0 = "#000000"
  vim.g.terminal_color_1 = "#ff0000"
  vim.g.terminal_color_2 = "#bcbcbc"
  vim.g.terminal_color_3 = "#d0d0d0"
  vim.g.terminal_color_4 = "#8a8a8a"
  vim.g.terminal_color_5 = "#585858"
  vim.g.terminal_color_6 = "#eeeeee"
  vim.g.terminal_color_7 = "#d0d0d0"
  vim.g.terminal_color_8 = "#585858"
  vim.g.terminal_color_9 = "#ff0000"
  vim.g.terminal_color_10 = "#bcbcbc"
  vim.g.terminal_color_11 = "#d0d0d0"
  vim.g.terminal_color_12 = "#8a8a8a"
  vim.g.terminal_color_13 = "#585858"
  vim.g.terminal_color_14 = "#eeeeee"
  vim.g.terminal_color_15 = "#eeeeee"

  local palette = require("256noir.palette")
  local highlights = require("256noir.highlights")(palette)

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "256noir"

  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
