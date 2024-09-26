return {
	{
		"numToStr/Comment.nvim",
		config = true,
		lazy = false,
	},
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					go = { "goimports", "gofmt" },
					rust = { "rustfmt" },
				},
			})

			vim.api.nvim_create_user_command("Format", function()
				require("conform").format()
			end, {})

			local keymap = vim.keymap.set
			keymap("n", "<leader>fm", ":Format<CR>", { noremap = true, silent = true })
		end,
	}
}
