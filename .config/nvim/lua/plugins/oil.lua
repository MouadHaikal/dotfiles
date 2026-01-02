return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = true,

		float = {
			padding = 2,
			max_width = 60,
			max_height = 20,
			border = "rounded",
			win_options = {
				winblend = 0,
			},
		},
	},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
}
