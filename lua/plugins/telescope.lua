return {
	{
		'nvim-telescope/telescope.nvim',
		lazy = true,
		dependencies = {
			{
				'nvim-lua/plenary.nvim'
			},
		},
		keys = {
			{
				'<leader>sf',
				function()
					require('telescope.builtin').find_files()
				end,
				desc = 'Find Files'
			},
			{
				'<leader>sg',
				function()
					--require('telescope.builtin').extensions.live_grep_args.live_grep_args()
					require('telescope.builtin').live_grep()
				end,
				desc = 'Live Grep'
			},
		},
		opts = {
			defaults = {
				layout_strategy = 'horizontal',
				layout_config = { prompt_position = 'top' },
				sorting_strategy = 'ascending',
				winblend = 0,
			},
		},
	}
}
