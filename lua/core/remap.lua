vim.g.mapleader = " "

-- Neotree toggle
vim.keymap.set( "n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree" } )

-- Save
vim.keymap.set( "n", "<C-s>", "<cmd>w<cr>", { desc = "Save" } )

-- Indenting
vim.keymap.set( "v", "<", "<gv", { desc = "Indent line" } )
vim.keymap.set( "v", ">", ">gv", { desc = "Indent line" } )

-- Indenting
vim.keymap.set( "i", "jj", "<ESC>j", { desc = "Leave insert mode and go down" } )
vim.keymap.set( "i", "kk", "<ESC>k", { desc = "Leave insert mode and down down" } )

-- Macros
vim.keymap.set( "n", "<C-x>", "@@", { desc = "Repeat macro" } )

-- Window navigation
vim.keymap.set( "n", "<C-h>", "<C-w>h", { desc = "Navigate to upper window" } )
vim.keymap.set( "n", "<C-l>", "<C-w>l", { desc = "Navigate to lower window" } )
vim.keymap.set( "n", "<C-j>", "<C-w>j", { desc = "Navigate to left window" } )
vim.keymap.set( "n", "<C-k>", "<C-w>k", { desc = "Navigate to right window" } )

-- Copy to system clipboard
vim.keymap.set( "n", "<C-c>", "<S-v>\"*y", { desc = "Copy to clipboard" } )
vim.keymap.set( "v", "<C-c>", "\"*y", { desc = "Copy from clipboard" } )

-- Paste from system clipboard
vim.keymap.set( "n", "<C-v>", "\"*p", { desc = "Paste to clipboard" } )
vim.keymap.set( "v", "<C-v>", "\"*p", { desc = "Paste to clipboard" } )
vim.keymap.set( "i", "<C-v>", "<Escape>h<S-v>\"*pi", { desc = "Paste to clipboard" } )

-- Telescope
vim.keymap.set( "n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" } )
vim.keymap.set( "n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Grep files" } )
vim.keymap.set( "n", "<leader>fg", "<cmd>Telescope live_grep_args<cr>", { desc = "Grep files (args)" } )
vim.keymap.set( "n", "<leader>fr", "<cmd>Telescope resume<cr>", { desc = "Resume Telescope search" } )

-- Buffers
vim.keymap.set( "n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" } )
vim.keymap.set( "n", "<S-Tab>", "<cmd>bprev<cr>", { desc = "Previous buffer" } )
vim.keymap.set( "n", "<Leader>x", "<cmd>bd<cr>", { desc = "Delete buffer" } )
vim.keymap.set( "n", "<Leader>b", "<cmd>e#<cr>", { desc = "Previous buffer" } )

-- Peepsight
vim.keymap.set( "n", "<leader>p", "<cmd>Peepsight<cr>", { desc = "Toggle Peepsight" } )

-- Tab manipulation
vim.keymap.set( "n", "<leader><S-h>", "<cmd> tabp <CR>", { desc = "Previous tab" } )
vim.keymap.set( "n", "<leader><S-j>", "<cmd> tabn <CR>", { desc = "Next tab" } )
vim.keymap.set( "n", "<leader>tn", "<cmd> tabnew <CR>", { desc = "New tab" } )
vim.keymap.set( "n", "<leader>tx", "<cmd> tabclose <CR>", { desc = "Close tab" } )

-- Numbers & relative numbers
vim.keymap.set( "n", "<leader>n", "<cmd> set nu! <CR>", { desc = "Toggle numbers" } )
vim.keymap.set( "n", "<leader>rn", "<cmd> set rnu! <CR>", { desc = "Toggle relative numbers" } )

-- Floating terminal
vim.keymap.set( "n", "<A-i>", "<cmd> lua require(\"FTerm\").toggle() <CR>", { desc = "Toggle floating terminal" } )
vim.keymap.set( "t", "<A-i>", "<C-\\> <C-n> <cmd> lua require(\"FTerm\").toggle() <CR>", { desc = "Toggle floating terminal" } )

-- Terminal mode
vim.keymap.set( "t", "<Escape>", "<C-\\><C-n>", { desc = "Exit terminal mode" } )
vim.keymap.set( "t", "<A-o>", "<C-\\><C-n>", { desc = "Exit terminal mode" } )

-- Trouble (Diagnostics)
vim.keymap.set( "n", "<A-d>", "<cmd> TroubleToggle document_diagnostics <CR>", { desc = "Toggle document diagnostics" } )
vim.keymap.set( "n", "<A-w>", "<cmd> TroubleToggle workspace_diagnostics <CR>", { desc = "Toggle workspace diagnostics" } )

-- Navigating through change hunks
vim.keymap.set( "n", "<leader>h", "[c", { desc = "Go to the previous change hunk." } )
vim.keymap.set( "n", "<leader>j", "]c", { desc = "Go to the next change hunk." } )

-- Harpoon related keybindings
vim.keymap.set( "n", "<A-m>", "<cmd> lua require(\"harpoon.mark\").add_file() <CR>", { desc = "Add file to harpoon." } )
vim.keymap.set( "n", "<A-h>", "<cmd> lua require(\"harpoon.ui\").toggle_quick_menu() <CR>", { desc = "Toggle the harpoon quick menu." } )
vim.keymap.set( "n", "<A-j>", "<cmd> lua require(\"harpoon.ui\").nav_prev() <CR>", { desc = "Previous harpoon navigation." } )
vim.keymap.set( "n", "<A-k>", "<cmd> lua require(\"harpoon.ui\").nav_next() <CR>", { desc = "Next harpoon navigation." } )

-- Comments
vim.keymap.set( "n", "<leader>/", "<cmd> require('Comment.api').toggle.linewise.current() <CR>", { desc = "Toggle comment" } )
vim.keymap.set( "v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode()) <CR>", { desc = "Toggle comment" } )

-- LSP
vim.keymap.set( "n", "<leader>cr", "<cmd> lua vim.lsp.buf.rename() <CR>", { desc = "Rename" } )
vim.keymap.set( "n", "gd", "<cmd> lua vim.lsp.buf.definition() <CR>", { desc = "Go to definition" } )
vim.keymap.set( "n", "gD", "<cmd> lua vim.lsp.buf.declaration() <CR>", { desc = "Go to declaration" } )
-- Go to definition (C#)
-- TODO: Figure out how to get this to work only in c# related files.
-- vim.keymap.set( "n", "gd", "<cmd> lua require(\"omnisharp_extended\").lsp_definitions() <CR>" )

-- Git
vim.keymap.set( "n", "<leader>gb",  "<cmd> lua require('gitsigns').blame_line{ full = true } <CR>", { desc = "Blame line" } )
vim.keymap.set( "n", "<leader>gd",  "<cmd> lua require('gitsigns').diffthis( '@^' ) <CR>", { desc = "Diff current line" } )
vim.keymap.set( "n", "<leader>gtb", "<cmd> lua require('gitsigns').toggle_current_line_blame() <CR>", { desc = "Toggle current line blame" } )
vim.keymap.set( "n", "<leader>gtd", "<cmd> lua require('gitsigns').toggle_deleted() <CR>", { desc = "Toggle current line blame" } )
vim.keymap.set( "n", "<leader>gph", "<cmd> lua require('gitsigns').preview_hunk() <CR>", { desc = "Preview hunk" } )
-- vim.keymap.set( "n", "<leader>h",   "<cmd> lua require('gitsigns').prev_hunk() <CR>", { desc = "Go to previous change hunk" } )
-- vim.keymap.set( "n", "<leader>j",   "<cmd> lua require('gitsigns').next_hunk() <CR>", { desc = "Go to next change hunk" } )

-- Snippets and Luasnip
vim.keymap.set( "n", "<leader>se", function() require("scissors").editSnippet() end, { desc = "Edit snippet" } )
vim.keymap.set( { "n", "x" }, "<leader>sa", function() require("scissors").addNewSnippet() end, { desc = "Add new snippet" } )

