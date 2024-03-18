return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			local defaults = {
				theme = 'dracula'
			}
			require('lualine').setup(defaults)
		end,
	}
}
