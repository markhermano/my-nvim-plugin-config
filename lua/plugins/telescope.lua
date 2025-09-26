return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0", -- prevent breaking changes
      },
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      local actions = require("telescope.actions")

      telescope.setup({
        pickers = {
          live_grep = {
            file_ignore_patterns = { "node_modules", ".git", ".venv" },
            additional_args = function(_)
              return { "--hidden" }
            end,
          },
          find_files = {
            file_ignore_patterns = { "node_modules", ".git", ".venv" },
            hidden = true,
          },
        },
        defaults = {
          path_display = { "smart" },
          wrap_results = true,
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
        extensions = {
          ["ui-select"] = require("telescope.themes").get_dropdown({}),
        },
      })

      -- load extensions
      telescope.load_extension("live_grep_args")
      telescope.load_extension("ui-select")

      -- keymaps
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find by filename" })
      vim.keymap.set(
        "n",
        "<leader>fg",
        telescope.extensions.live_grep_args.live_grep_args,
        { desc = "Search by keyword" }
      )
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Display telescope buffers" })
      vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
      vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
    end,
  },
}
