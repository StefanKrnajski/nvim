local opt = vim.opt

-- Disable nvim intro
opt.shortmess:append "sI"

-- Set tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Set relative numbers
opt.relativenumber = true
opt.number = true

-- Colors
opt.termguicolors = true

-- Wrapping
opt.whichwrap:append "<>[]hl"
