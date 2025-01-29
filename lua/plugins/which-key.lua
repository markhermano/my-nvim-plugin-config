return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- config here
		icons = {
			breadcrumb = "", -- The arrow icon
			separator = "   ", -- Separator between key and label
		},
	},
}
