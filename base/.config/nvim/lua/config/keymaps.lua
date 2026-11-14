-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Deleting with x shouldn't touch the clipboard
vim.keymap.set({ "n", "x" }, "x", '"_x')
-- Pasting over a selection keeps what you copied
vim.keymap.set("x", "p", "P")
vim.keymap.set({ "n", "x" }, "c", '"_c')
