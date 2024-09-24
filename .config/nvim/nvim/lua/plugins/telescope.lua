return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require('telescope.builtin')

        -- Find files
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })

        -- Recently opened files
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Recent Files" })

        -- Live grep (search within files)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Grep Files" })

        -- Search buffers
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })

        -- Help tags (Neovim help documentation)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help" })
    end
}

