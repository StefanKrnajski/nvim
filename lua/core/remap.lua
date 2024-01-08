vim.g.mapleader = " "

-- Neotree toggle
vim.keymap.set( "n", "<leader>e", "<cmd>Neotree toggle<cr>" )

-- Save
vim.keymap.set( "n", "<C-s>", "<cmd>w<cr>" )

-- Window navigation
vim.keymap.set( "n", "<C-h>", "<C-w>h" )
vim.keymap.set( "n", "<C-l>", "<C-w>l" )
vim.keymap.set( "n", "<C-j>", "<C-w>j" )
vim.keymap.set( "n", "<C-k>", "<C-w>k" )

-- Copy to system clipboard
vim.keymap.set( "n", "<C-c>", "<S-v>\"*y" )
vim.keymap.set( "v", "<C-c>", "\"*y" )

-- Paste from system clipboard
vim.keymap.set( "n", "<C-v>", "\"*p" )
vim.keymap.set( "v", "<C-v>", "\"*p" )
vim.keymap.set( "i", "<C-v>", "<Escape>h<S-v>\"*pi" )

-- Telescope
vim.keymap.set( "n", "<leader>ff", "<cmd>Telescope find_files<cr>" )
vim.keymap.set( "n", "<leader>fg", "<cmd>Telescope live_grep_args<cr>" )
vim.keymap.set( "n", "<leader>fw", "<cmd>Telescope live_grep<cr>" )
vim.keymap.set( "n", "<leader>fr", "<cmd>Telescope resume<cr>" )

-- Buffers
vim.keymap.set( "n", "<Tab>", "<cmd>bnext<cr>" )
vim.keymap.set( "n", "<S-Tab>", "<cmd>bprev<cr>" )
vim.keymap.set( "n", "<Leader>x", "<cmd>bd<cr>" )

-- Peepsight
vim.keymap.set( "n", "<leader>p", "<cmd>Peepsight<cr>" )

-- Tab manipulation
vim.keymap.set( "n", "<leader><S-h>", "<cmd> tabp <CR>" )
vim.keymap.set( "n", "<leader><S-j>", "<cmd> tabn <CR>" )
vim.keymap.set( "n", "<leader>tn", "<cmd> tabnew <CR>" )
vim.keymap.set( "n", "<leader>tx", "<cmd> tabclose <CR>" )

-- Numbers & relative numbers
vim.keymap.set( "n", "<leader>n", "<cmd> set nu! <CR>" )
vim.keymap.set( "n", "<leader>rn", "<cmd> set rnu! <CR>" )

-- Floating terminal
vim.keymap.set( "n", "<A-i>", "<cmd> lua require(\"FTerm\").toggle() <CR>" )
vim.keymap.set( "t", "<A-i>", "<C-\\> <C-n> <cmd> lua require(\"FTerm\").toggle() <CR>" )

-- LSP
vim.keymap.set( "n", "<leader>cr", "<cmd> lua vim.lsp.buf.rename() <CR>" )
-- Go to definition (C#)
-- TODO: Figure out how to get this to work only in c# related files.
-- vim.keymap.set( "n", "gd", "<cmd> lua require(\"omnisharp_extended\").lsp_definitions() <CR>" )

