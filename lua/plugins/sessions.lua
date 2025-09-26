return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        auto_restore_enabled = false,
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "~/Desktop", "~/Documents" },
      })

      -- keymaps for auto-session
      vim.keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore a session for the cwd" })
      vim.keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" })
    end,
  },

  {
    "rmagatti/session-lens",
    dependencies = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
    config = function()
      require("session-lens").setup()

      -- telescope integration
      vim.keymap.set("n", "<leader>ls", "<cmd>SearchSession<CR>", {
        noremap = true,
        desc = "Display existing sessions",
      })
    end,
  },
}
