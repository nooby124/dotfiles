return {
	"neovim/nvim-lspconfig",
	config = function()
		-- require("lspconfig").setup({})
	 	require('lspconfig').pyright.setup({})
 		require('lspconfig').ast_grep.setup({})
 		require('lspconfig').csharp_ls.setup({})
 		require('lspconfig').lua_ls.setup({})
 		require('lspconfig').html.setup({})
	 	require('lspconfig').bashls.setup({})
		require('lspconfig').csharp_ls.setup({})
		require('lspconfig').jdtls.setup({})
	end

}
