local barbar = require("barbar")

barbar.setup{
    animation = false,
    icons = {
        button = "",
    },
}

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map("n", "<A-w>", "<cmd>BufferClose<CR>", options)
map("n", "<S-h>", "<cmd>BufferPrevious<CR>", options)
map("n", "<S-l>", "<cmd>BufferNext<CR>", options)
map("n", "<A-1>", "<cmd>BufferGoto 1<CR>", options)
map("n", "<A-2>", "<cmd>BufferGoto 2<CR>", options)
map("n", "<A-3>", "<cmd>BufferGoto 3<CR>", options)
map("n", "<A-4>", "<cmd>BufferGoto 4<CR>", options)
map("n", "<A-5>", "<cmd>BufferGoto 5<CR>", options)
map("n", "<A-6>", "<cmd>BufferGoto 6<CR>", options)
map("n", "<A-7>", "<cmd>BufferGoto 7<CR>", options)
map("n", "<A-8>", "<cmd>BufferGoto 8<CR>", options)
map("n", "<A-9>", "<cmd>BufferGoto 9<CR>", options)
map("n", "<A-0>", "<cmd>BufferLast<CR>", options)
