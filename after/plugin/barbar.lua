local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)
map('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)

-- Pin/unpin buffer
-- map('n', '<S-p>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)
