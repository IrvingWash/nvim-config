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

-- Theme
local rose_pine = {
    "rose-pine/neovim",
    name = "rose-pine",
}
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
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "sharkdp/fd",
    },
}


require("lazy").setup({
    rose_pine,
    nvim_web_dev_icons,
    nvim_tree,
    telescope,
})
