return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
            "                                                                              _                ",
            "                          ________ ___ ______  ______ _______   ________ ___| |____ _   _   _ ",
            "                         |.  ___  |_  |____  ||____  |.  __  | |.  ___  |_  |____  | | | | | |",
            "                          | |   | | |_|    | |     | || |  | |  | |   | | | |   / /| | | | | |",
            "                         _| |___| |        | |_____| || |  | |  | |___| | | |  / / | |/ /_/ / ",
            "                        ( )_______|        |_/________/_|  |_|  |_______| |_| /_/  |_______/  ",
            "                        |/                                                                    ",
            "                                                                                       _      ",
            "             ________ ___  __   __.___  ______    ___ _____   __  ___ ______ _____   _| |____ ",
            "            |.  ___  |_  | \\ \\ / /|_  ||____  |  |_  |_  \\ \\ / / |_  |____  |_  \\ \\ / /____  |",
            "             | |   | | |_|  \\ V /   |_|     | |    | | |_|  V /    |_|    | | | |  V /    / / ",
            "             | |___| |    ___\\  \\      _____| |_   | |   | |\\ \\           | | | | |\\ \\   / /  ",
            "             |_______|   |______|     /________/   | |   |_| \\_\\          |_| |_|_| \\_\\ /_/   ",
            "                                                   |_|                                         ",
        }

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "Find file", "<cmd>Telescope find_files<CR>"),
            dashboard.button("r", "Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("s", "Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
            dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
            autocmd FileType alpha setlocal nofoldenable
        ]])
    end
}

