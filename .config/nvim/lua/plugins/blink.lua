return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = (function()
				if vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
			config = function()
				local ls = require("luasnip")
				local opts = { silent = true }

				vim.keymap.set({ "i", "s" }, "<A-n>", function()
					ls.jump(1)
				end, opts)
				vim.keymap.set({ "i", "s" }, "<A-S-n>", function()
					ls.jump(-1)
				end, opts)
			end,
		},
		"folke/lazydev.nvim",
	},

	--- @module 'blink.cmp'
	--- @type blink.cmp.Config
	opts = {
		keymap = {
			preset = "default",

			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },

			["<A-CR>"] = { "select_and_accept", "fallback" },
		},

		appearance = {
			nerd_font_variant = "normal",
		},

		completion = {
			menu = {
				auto_show = true,
				border = "rounded",
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
				window = { border = "rounded" },
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "lazydev" },
			providers = {
				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},

		snippets = { preset = "luasnip" },

		fuzzy = { implementation = "lua" },

		signature = { enabled = true },
	},
}
