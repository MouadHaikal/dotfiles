return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		open_mapping = [[<leader>tm]],
		direction = "float",
		start_in_insert = true,
		close_on_exit = true,
		insert_mappings = false,
		terminal_mappings = false,
		float_opts = {
			border = "rounded", -- | 'double' | 'shadow' | 'single' | ...
			-- title_pos = 'left' | 'center' | 'right',
		},
	},
}
