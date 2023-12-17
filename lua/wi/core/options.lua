local g = vim.g
local opt = vim.opt

opt.mouse = "a" -- Enable mouse for all the modes.
opt.clipboard = "unnamedplus" -- Hopefully make the clipboard make in the intuitive way.
opt.swapfile = false -- Disable swap files.
opt.number = true -- Print the line numbers.
opt.showmatch = true -- Brackets automation.
opt.ignorecase = true -- Ignore case when searching inside the document.
opt.smartcase = true -- Respect case if it varies.
opt.termguicolors = true -- Enable 24 bit RGB colors.
opt.expandtab = true -- Insert spaces instead of tab.
opt.shiftwidth = 4 -- Indentation width.
opt.tabstop = 4 -- Tab size in spaces.
opt.smartindent = true -- Enable autoindentation on new line.
opt.list = true; -- Render whitespace.
opt.hidden = true -- Unload buffers when they are abandoned.
opt.lazyredraw = true -- Drawin optimization.

opt.listchars = {
    space = "·",
    tab = ">-",
}

local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
