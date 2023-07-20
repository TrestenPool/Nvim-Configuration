local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

-- create new keybindings --
lsp.on_attach(function(client, bufnr)
	--local opts = {buffer = bufnr, remap = false}
    lsp.default_keymaps({buffer = bufnr})

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	-- vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.hover() end, opts)

	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.reference() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)

	vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.signature_help() end, opts)

    vim.keymap.set("n", "<leader><leader>lsp", ":LspStop<CR>")
end)

-- makes sure these lsps are installed --
lsp.ensure_installed ({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'clangd',
	'pyright',
})

-- 
local cmp_select = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] 	= cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] 	= cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] 	= cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] 	= cmp.mapping.complete(),
})


lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})




lsp.setup()



