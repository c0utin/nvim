local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- previous 
keymap.set("n", "<leader>pv", vim.cmd.Ex)
