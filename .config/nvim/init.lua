require("config.lazy")
require("mason").setup()

require'lspconfig'.pyright.setup{}
require'lspconfig'.ast_grep.setup{}
require'lspconfig'.csharp_ls.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.bashls.setup{}

vim.api.nvim_set_keymap('i', '<CR>', [[pumvisible() ? "\<C-y>" : "\<CR>"]], { noremap = true, silent = true, expr = true })


vim.cmd("colorscheme carbonfox")

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


vim.opt.number = true
