return {
	"xero/miasma.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.opt.termguicolors = true

		vim.cmd("colorscheme miasma")

		-- FORCE transparent backgrounds
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	end,
}
