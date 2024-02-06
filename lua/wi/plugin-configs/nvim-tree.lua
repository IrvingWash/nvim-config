local function on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return {
            desc = "nvim-tree: " .. desc,
            noremap = true,
            silent = true,
            nowait = true,
        }
    end

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set("n", "<leader>E", api.tree.toggle, opts("Toggle"))
    vim.keymap.set("n", "<leader>e", api.tree.focus, opts("Focus"))
    vim.keymap.set("n", "<leader><TAB>", api.tree.find_file, opts("Find file"))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
    on_attach = on_attach,
    filters = {
        dotfiles = false,
    },
}
