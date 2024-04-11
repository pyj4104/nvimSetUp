return {
	{
		'nvim-telescope/telescope.nvim',
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
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			telescope.setup({
				defaults = {
					layout_strategy = 'horizontal',
					layout_config = { prompt_position = 'top' },
					sorting_strategy = 'ascending',
					winblend = 0,
					mappings = {
						i = {
							["<Tab>"] = actions.select_tab
						},
						n = {
							["<Tab>"] = actions.select_tab
						}
					}
				},
			})
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}
					}
				}
			}
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end
	}
}
