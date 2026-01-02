return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				style_preset = {
					bufferline.style_preset.no_italic,
					-- bufferline.style_preset.no_bold,
				},
				separator_style = { "", "" },
				show_buffer_close_icons = false,
				show_close_icon = false,
				color_icons = true,
				modified_icon = " ",
				left_trunc_marker = "󰁐 ",
				right_trunc_marker = "󰁗 ",
				indicator = {
					style = "none",
				},
			},
		})
	end,
}
