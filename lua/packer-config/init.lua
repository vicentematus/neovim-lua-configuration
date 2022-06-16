return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("EdenEast/nightfox.nvim")

	use("kyazdani42/nvim-web-devicons")
	use({
		"kyazdani42/nvim-tree.lua",
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("onsails/lspkind.nvim")
	use("rcarriga/nvim-notify")

	use("nvim-lualine/lualine.nvim")

	use("romgrk/barbar.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-refactor")
	use({
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup({})
		end,
	})

	use("windwp/nvim-ts-autotag")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("BurntSushi/ripgrep") -- Para el buscador de Tree Finder

	use("jose-elias-alvarez/null-ls.nvim") -- Null LS

	use("williamboman/nvim-lsp-installer")
end)
