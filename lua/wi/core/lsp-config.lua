vim.keymap.set("n", "<leader>x", vim.diagnostic.open_float)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename)

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {}
lspconfig.tsserver.setup {}
lspconfig.eslint.setup {}
lspconfig.rust_analyzer.setup {}
