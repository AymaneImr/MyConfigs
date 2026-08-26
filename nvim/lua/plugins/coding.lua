return {
	-- Incremental rename
	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		config = true,
	},

	-- Go forward/backward with square brackets
	{
		"nvim-mini/mini.bracketed",
		event = "BufReadPost",
		config = function()
			local bracketed = require("mini.bracketed")
			bracketed.setup({
				file = { suffix = "" },
				window = { suffix = "" },
				quickfix = { suffix = "" },
				yank = { suffix = "" },
				treesitter = { suffix = "n" },
			})
		end,
	},

	-- Better increase/descrease
	{
		"monaqa/dial.nvim",
    -- stylua: ignore
    keys = {
      { "<C-a>", function() return require("dial.map").inc_normal() end, expr = true, desc = "Increment" },
      { "<C-x>", function() return require("dial.map").dec_normal() end, expr = true, desc = "Decrement" },
    },
		config = function()
			local augend = require("dial.augend")
			require("dial.config").augends:register_group({
				default = {
					augend.integer.alias.decimal,
					augend.integer.alias.hex,
					augend.date.alias["%Y/%m/%d"],
					augend.constant.alias.bool,
					augend.semver.alias.semver,
					augend.constant.new({ elements = { "let", "const" } }),
				},
			})
		end,
	},
	{
		"vyfor/cord.nvim",
		branch = "client-server",
		build = ":Cord update",
		event = "VeryLazy",

		opts = {
			buttons = {
				{
					label = function(opts)
						return opts.repo_url and opts.workspace or nil
					end,
					url = function(opts)
						return opts.repo_url
					end,
				},
			},

			advanced = {
				discord = {
					reconnect = {
						enabled = true,
					},
				},
			},

			display = {
				theme = "catppuccin",
				flavor = "accent",
				swap_icons = true,
			},

			variables = true,

			text = {
				editing = "Editing ${filename} • [${diagnostics} errors]",
				viewing = "Reading ${filename} • [${diagnostics} errors]",
				workspace = "In ${workspace}",

				terminal = function(opts)
					return "In " .. (opts.name or "kitty")
				end,
			},

			extensions = {
				"zellij",
				diagnostics = {
					scope = "buffer",

					severity = {
						min = vim.diagnostic.severity.ERROR,
					},

					override = false,
				},
			},

			idle = {
				details = function(opts)
					return "Taking a break from " .. opts.workspace
				end,

				state = "Be right back",
				tooltip = "😴",
			},
		},
	},
}
