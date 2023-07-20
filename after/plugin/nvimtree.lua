-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings --
    -- api.config.mappings.default_on_attach(bufnr)

    ---- custom mappings inside of nvimtree ----
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))

    -- rename, info
    vim.keymap.set('n', 'i', api.node.show_info_popup, opts('info pop up'))
    vim.keymap.set('n', 'r', api.fs.rename, opts('rename'))

    -- copy,paste
    vim.keymap.set('n', 'c', api.fs.copy.node, opts('copy'))
    vim.keymap.set('n', 'p', api.fs.paste, opts('paste'))

    -- create, delete
    vim.keymap.set('n', 'n', api.fs.create, opts('create'))
    vim.keymap.set('n', 'd', api.fs.remove, opts('delete'))

    -- open, close, preview --
    vim.keymap.set('n', '.', api.node.navigate.parent_close, opts('close parent'))
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('open'))
    vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('open preview'))

    -- open in split --
    vim.keymap.set('n', 'v', api.node.open.vertical, opts('vertical split'))
    vim.keymap.set('n', 'h', api.node.open.horizontal, opts('horizontal split'))

    -- expand, collapse all
    vim.keymap.set('n', 'e', api.tree.expand_all, opts('Expand all'))
    vim.keymap.set('n', 'E', api.tree.collapse_all, opts('Collapse all'))

    -- bookmarks
    vim.keymap.set('n', 'm', api.marks.toggle, opts('mark bookmark'))

    -- copy name
    vim.keymap.set('n', 'y', api.fs.copy.filename, opts('copy filename'))
    vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('copy relative path'))

    -- toggle buffer filter
    vim.keymap.set('n', 'z', api.tree.toggle_no_buffer_filter, opts('toggle buffer filter'))

    -- search
    vim.keymap.set('n', 's', api.tree.search_node, opts('Search'))

    -- toggle hidden files
    vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle hidden'))

    -- change directory
    vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node, opts('Change root node'))

    -- parent directory
    vim.keymap.set('n', 'P', api.node.navigate.parent, opts('Go to parent directory'))
    -- node.navigate.parent

    --   vim.keymap.set('n', '<leader>v', api.tree.node.open.vertical, opts('Open vertical split'))
    --   vim.keymap.set('n', '<leader>h', api.tree.node.open.horizontal, opts('Open in horizontal split'))

end


-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---
}


---------------
-- MY REMAPS --
---------------

-- Focus NvimTree
vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>')

-- vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

-- vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

