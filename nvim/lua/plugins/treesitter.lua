return {
	{ "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",

		opts = {
			ensure_installed = {
				"go",
				"astro",
				"cmake",
				"cpp",
				"css",
				"fish",
				"gitignore",
				"graphql",
				"http",
				"java",
				"php",
				"rust",
				"scss",
				"sql",
				"svelte",
				"python",
				"tsx",
				"typescript",
			},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			event = { "BufReadPost", "BufNewFile" },
			-- matchup = {
			-- 	enable = true,
			-- },

			-- https://github.com/nvim-treesitter/playground#query-linter
			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},

			playground = {
				enable = true,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = true, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
		},
	},
}
