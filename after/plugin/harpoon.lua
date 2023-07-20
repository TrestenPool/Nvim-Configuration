local mark 	= require("harpoon.mark")
local ui 	= require("harpoon.ui")

-- mark the file --
vim.keymap.set("n", "<leader>a", mark.add_file)

-- bring up the harpoon menu -- 
vim.keymap.set("n", "<C-u>", ui.toggle_quick_menu)

-- switch between the files --
--vim.keymap.set("n", "<leader><leader>1", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<leader><leader>2", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<leader><leader>3", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<leader><leader>4", function() ui.nav_file(4) end)

-- switch between the files next and prev --
vim.keymap.set("n", "<C-n>", ui.nav_next)
vim.keymap.set("n", "<C-p>", ui.nav_prev)

