return {
  -- Install Catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- You can choose between latte, frappe, macchiato, and mocha
        transparent_background = false, -- Enable this if you want transparency
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

