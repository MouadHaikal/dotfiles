return {
	"morhetz/gruvbox",
	priority = 1000,
	config = function()
		-- True color support
		vim.opt.termguicolors = true

		-- Gruvbox options
		vim.g.gruvbox_contrast_dark = "soft" -- 'soft', 'medium', 'hard'
		vim.g.gruvbox_italic = 0
		vim.g.gruvbox_bold = 1
		vim.g.gruvbox_transparent_bg = 1

		vim.cmd.colorscheme("gruvbox")

		-- FORCE transparent backgrounds
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	end,
}
