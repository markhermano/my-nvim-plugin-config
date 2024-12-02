return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      session_lens = {
        load_on_setup = true,
        previewer = false,
        theme_conf = {
          border = true,
        },
      },
      vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, {
        noremap = true,
      }),
    })
  end,
}
