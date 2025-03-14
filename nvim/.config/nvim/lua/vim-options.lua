vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set scrolloff=10")

vim.cmd("set number relativenumber")

vim.cmd("set syntax")
vim.cmd("set nocompatible")

vim.keymap.set("n", "<esc>", vim.cmd.nohlsearch)
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set showmode")

vim.cmd("set noswapfile")

vim.cmd("set clipboard=unnamedplus")

vim.cmd("set spelllang=fr")

vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
vim.keymap.set("n", "<C-q>", ":q<CR>")
vim.keymap.set("n", "s", "<Nop>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>v", "<C-w>v")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
	vim.highlight.on_yank()
	end,
})

-- vim.keymap.set("n", "<leader>tp", 
--     function()
--         vim.cmd("set spelllang=fr")
--         vim.cmd("set spell")
--         vim.cmd("set linebreak")
--         vim.keymap.set({"n", "v"}, "j", "gj")
--         vim.keymap.set({"n", "v"}, "k", "gk")
--     end
-- )
