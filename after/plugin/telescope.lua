local builtin = require('telescope.builtin')

-- find file
vim.keymap.set('n', '<C-s>', builtin.find_files, {})

-- grep files
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})

-- git file
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

-- find references 
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})


-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
