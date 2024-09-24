require("config.lazy")
require("mason").setup()
require("autoclose").setup()

vim.keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>Y', '"+yg_', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>yy', '"+yy', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>p', '"+p', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>P', '"+P', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>p', '"+p', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>P', '"+P', { noremap = true, silent = true })


vim.keymap.set('n', '<A-w>', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<CR>', [[pumvisible() ? "\<C-y>" : "\<CR>"]], { noremap = true, silent = true, expr = true })

vim.api.nvim_set_keymap("n", "<C-n>", ":Neotree toggle right<CR>", { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Recent Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Grep Files" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help" })
vim.keymap.set('n', '<leader>pm', ':MarkdownPreview<CR>', {})
vim.keymap.set('n', '<leader>lss', ':LiveServerStart<CR>', {})
vim.keymap.set('n', '<leader>lsk', ':LiveServerStop<CR>', {})
vim.keymap.set('n', '<leader>tet', ':Tetris<CR>', {})
vim.cmd("colorscheme afterglow")

vim.keymap.set('n', '<leader>gp', ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set('n', '<leader>tn', ":tabnew | Telescope find_files<CR>", {})
vim.api.nvim_set_keymap('n', '<S-z>', ':tabprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bored', ":CellularAutomaton make_it_rain<CR>", {})
vim.keymap.set('n', '<leader>board', ":CellularAutomaton game_of_life<CR>", {})

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('x', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('x', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('x', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('x', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })


vim.opt.relativenumber = true
