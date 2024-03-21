return {
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end,
		keys = {
			{
				'<leader>cM',
				'<CMD>Mason<CR>',
				desc = 'Mason'
			},
		},
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = {
					"lua_ls",
					"omnisharp",
					"gopls",
					"html",
					"texlab",
					'marksman',
					'sqlls',
					'rust_analyzer',
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
	}
}
