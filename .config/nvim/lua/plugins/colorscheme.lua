-- Ensure this file is loaded in Neovim's runtime environment
return {
  -- Add PaperColor theme
  { "NLKNguyen/papercolor-theme", config = function()
      -- Set the colorscheme and background
      vim.cmd("set background=dark")
      vim.cmd("colorscheme PaperColor")
    end,
  },
}

