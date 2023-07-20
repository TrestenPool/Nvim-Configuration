-- define the leader --
vim.g.mapleader = " "

-- pull up explorer --
vim.keymap.set("n", "<C-e>", vim.cmd.Ex)

-- jj to escape out of insert mode --
vim.keymap.set('i', 'jj', '<Esc>', {noremap = true})

-- moving faster up and down --
vim.keymap.set('n', '<S-k>', '5k', {noremap = true})
vim.keymap.set('n', '<S-j>', '5j', {noremap = true})
vim.keymap.set('v', '<S-k>', '5k', {noremap = true})
vim.keymap.set('v', '<S-j>', '5j', {noremap = true})

-- move the selected lines up or down --
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")

-- moving between splits
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- yank the entire line with Y --
vim.keymap.set("n", "Y", "yg$")

-- pasting does not loose what is in the buffer --
vim.keymap.set("x", "<leader>p", "\"_dP")

-- save to the clipboard instead of vim register --
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- search and replace with the word under the cursor --
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
