return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		-- Automatically installed and enabled
		ensure_installed = {
			"lua_ls",
			"clangd",
			"pyright",
			"asm_lsp",
			"cmake",
			"cssls",
			"tailwindcss",
			"html",
			"ts_ls",
			"vue_ls",
			"jsonls",
			"gopls",
			"glsl_analyzer",
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {},
		},
		{
			"neovim/nvim-lspconfig",
			dependencies = { "saghen/blink.cmp" },
		},
		{
			"j-hui/fidget.nvim",
			opts = {
				notification = {
					window = {
						-- border = "rounded",
						winblend = 0,
					},
				},
			},
		},
	},
}
