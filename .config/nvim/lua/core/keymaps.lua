vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })

map("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>", { desc = "Refactor word under cursor" })

map("n", "n", "nzzzv", { desc = "Next instance" })
map("n", "N", "Nzzzv", { desc = "Previous instance" })

map("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment line" })
map("v", "<leader>/", "gc", { remap = true, desc = "Toggle comment" })

map("n", "<Esc>", "<Cmd>nohlsearch<CR><Esc>", { desc = "Clear search highlight" })

map("n", "<leader>x", "<Cmd>bdelete<CR>", { desc = "Close buffer" })

vim.keymap.del("n", "<C-w>d")
map("n", "gl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

map("n", "<Tab>", "<Cmd>BufferLineCycleNext<Cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<Cr>", { desc = "Previous buffer" })
map("n", "<A-Tab>", "<Cmd>BufferLineMoveNext<Cr>", { desc = "Move buffer right" })
map("n", "<A-S-Tab>", "<Cmd>BufferLineMovePrev<Cr>", { desc = "Move buffer left" })

map("n", ",", function()
	if vim.bo.filetype == "oil" then
		vim.api.nvim_win_close(0, true)
	else
		require("oil").open_float()
	end
end, { desc = "Toggle Oil floating window" })

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		local lspMap = function(keys, func, desc, mode)
			mode = mode or "n"
			vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end

		lspMap("grn", vim.lsp.buf.rename, "[R]e[n]ame")
		lspMap("gra", vim.lsp.buf.code_action, "[G]oto Code [A]ction", { "n", "x" })
		lspMap("grr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
		lspMap("gri", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
		lspMap("grd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
		lspMap("grD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
		lspMap("gO", require("telescope.builtin").lsp_document_symbols, "Open Document Symbols")
		lspMap("gW", require("telescope.builtin").lsp_dynamic_workspace_symbols, "Open Workspace Symbols")
		lspMap("grt", require("telescope.builtin").lsp_type_definitions, "[G]oto [T]ype Definition")

		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
			lspMap("<leader>th", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
			end, "[T]oggle Inlay [H]ints")
		end
	end,
})
