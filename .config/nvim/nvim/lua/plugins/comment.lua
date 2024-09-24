return {
	'numToStr/Comment.nvim',
	opts = function()
		require('Comment').setup({
			toggler = { line="tcl", block="tcb"},
			opleader = { line = 'tcl', block = 'tcb'}
		})
	end
}
