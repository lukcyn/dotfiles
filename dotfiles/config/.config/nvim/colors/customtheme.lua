local theme = require("theme")

vim.cmd("highlight clear")
vim.g.colors_name = "mytheme"

local set = vim.api.nvim_set_hl

local bg = "#" .. theme.background
local surface = "#" .. theme.surface

set(0, "Normal", {
  fg = "#" .. theme.text,
  bg = bg,
})

set(0, "NormalNC", {
  fg = "#" .. theme.text,
  bg = bg,
})

set(0, "SignColumn", {
  bg = bg,
})

set(0, "FoldColumn", {
  bg = bg,
})

set(0, "LineNr", {
  fg = "#" .. theme.text_disabled,
  bg = bg,
})

set(0, "CursorLine", {
  bg = "#" .. theme.highlight_soft,
})

set(0, "NormalFloat", {
  fg = "#" .. theme.text,
  bg = surface,
})

set(0, "FloatBorder", {
  fg = "#" .. theme.border_strong,
  bg = surface,
})

set(0, "Pmenu", {
  fg = "#" .. theme.text,
  bg = surface,
})

set(0, "PmenuSel", {
  fg = bg,
  bg = "#" .. theme.primary,
})

set(0, "StatusLine", {
  fg = "#" .. theme.text,
  bg = surface,
})

set(0, "StatusLineNC", {
  fg = "#" .. theme.text_muted,
  bg = surface,
})
