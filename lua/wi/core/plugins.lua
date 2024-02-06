-- Install lazy.nvim if it's not instaled.
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazy_path,
    })
end

vim.opt.rtp:prepend(lazy_path)

-- Icons
local nvim_web_dev_icons = "nvim-tree/nvim-web-devicons"
-- File explorer
local nvim_tree = {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
}
-- Fuzzy finder
local telescope = {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
}
-- Syntax hightlighting
local treesitter = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
}
-- LSP
local lspconfig = "neovim/nvim-lspconfig"
-- LSP management
local mason = "williamboman/mason.nvim"
-- Git signs
local gitsigns = "lewis6991/gitsigns.nvim"
-- Status line
local lualine = "nvim-lualine/lualine.nvim"
-- Indentation guides
local indent_blankline = "lukas-reineke/indent-blankline.nvim"
-- Autocompletion
local nvim_cmp = {
    'hrsh7th/nvim-cmp',
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    },
}
-- Other uses of the selected word highlighter
local vim_illuminate = "RRethy/vim-illuminate"
-- Git diff viewer
local diffview = "sindrets/diffview.nvim"

-- Themes
local kanagawa = "rebelot/kanagawa.nvim"
local catpuccin = { "catppuccin/nvim", name = "catppuccin" }

require("lazy").setup({
    nvim_web_dev_icons,
    nvim_tree,
    telescope,
    treesitter,
    lspconfig,
    mason,
    gitsigns,
    lualine,
    indent_blankline,
    nvim_cmp,
    vim_illuminate,
    diffview,
    kanagawa,
    catpuccin,
})
