return {
	"andweeb/presence.nvim",
	enabled = false,
	config = function()
		require("presence").setup({
			neovim_image_text = "i also use arch btw"
		})
	end
}
