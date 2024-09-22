require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tmux navigation

map({ "i", "n" }, "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map({ "i", "n" }, "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map({ "i", "n" }, "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map({ "i", "n" }, "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
