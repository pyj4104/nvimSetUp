return {
	{
		'echasnovski/mini.animate',
		version = false,
		config = function()
			require('mini.animate').setup()
		end
	},
	{
		'echasnovski/mini.move',
		version = false,
		config = function()
			require("mini.move").setup()
		end
	},
	{
		'echasnovski/mini.pairs',
		version = false,
		config = function()
			require("mini.pairs").setup()
		end
	},
	{
		'echasnovski/mini.surround',
		version = false,
		opts = {
			mappings = {
				add = "<leader>sa",
				delete = "<leader>sd",
				find = "<leader>sf",
				find_left = "<leader>sF",
				highlight = "<leader>sh",
				replace = "<leader>sr",
				update_n_lines = "<leader>sn",
			}
		},
		config = function(opts)
			require("mini.surround").setup(opts)
		end
	},
}
