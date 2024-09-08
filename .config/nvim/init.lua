jequire("config.lazy")
require("mason").setup()
require'lspconfig'.pyright.setup{}
require'lspconfig'.ast_grep.setup{}
require'lspconfig'.csharp_ls.setup{}
vim.opt.number = true


