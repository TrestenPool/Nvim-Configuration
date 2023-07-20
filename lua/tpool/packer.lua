-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope --
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorscheme --
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "ellisonleao/gruvbox.nvim" }

  -- treesitter --
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- treesitter playground --
  use('nvim-treesitter/playground')

  -- harpoon --
  use('theprimeagen/harpoon')

  -- undo tree --
  use('mbbill/undotree')

  -- vim fugitive --
  use('tpope/vim-fugitive')

  -- LSP Zero --
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required

          {                                      -- Optional
              'williamboman/mason.nvim',
              run = function()
                  pcall(vim.cmd, 'MasonUpdate')
              end,
          },

          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},     -- Required
          {'hrsh7th/cmp-nvim-lsp'}, -- Required
          {'L3MON4D3/LuaSnip'},     -- Required
      }
}

    -- nvim tree --
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    -- auto pairs --
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Pretty Fold --
    use{ 'anuvyklack/pretty-fold.nvim',
        config = function()
            require('pretty-fold').setup()
        end
    }

    -- buffer tabs --
    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use {
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status

        'romgrk/barbar.nvim',
    }

    -- tmux integration
    use({
        "aserowy/tmux.nvim"
    })

    -- lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

end)
