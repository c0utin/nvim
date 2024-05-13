local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

--previus 
keymap.set("n", "<leader>pq", vim.cmd.Ex)
