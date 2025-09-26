return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    -- vim.cmd.colorscheme "catppuccin"
    require("catppuccin").setup({
      transparent_background = true,
      integrations = {
        telescope = true,
        which_key = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")

    -- transparency overrides
    vim.cmd([[
      highlight Normal guibg=NONE
      highlight NormalFloat guibg=NONE
      highlight FloatBorder guibg=NONE

      highlight TelescopeNormal guibg=NONE
      highlight WhichKeyFloat guibg=NONE
      highlight WhichKeyBorder guibg=NONE
    ]])
  end
}

