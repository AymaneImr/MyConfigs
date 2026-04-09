return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,

		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		name = "kanagawa",
		priority = 1000,

		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"kepano/flexoki-neovim",
		name = "flexoki",
		lazy = false,
		priority = 1000,

		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000,

		opts = function()
			return {
				transparent = true,
			}
		end,
	},
}
