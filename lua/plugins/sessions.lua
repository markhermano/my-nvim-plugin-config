return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			session_lens = {
				auto_save = true,
			},
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "~/Desktop", "~/Documents" },
			vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, {
				noremap = true,
				desc = "Display existing sessions",
			}),
			vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore a session for the cwd" }),
			vim.keymap.set(
				"n",
				"<leader>ws",
				"<cmd>SessionSave<CR>",
				{ desc = "Save session for auto session root dir" }
			),
		})
	end,
}
