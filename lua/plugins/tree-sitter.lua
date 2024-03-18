return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { 'lua', 'javascript', 'python', 'go', 'yaml', 'json', 'typescript' },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
