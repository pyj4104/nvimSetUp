return {
	{
		"olexsmir/gopher.nvim",
		config = function(_, opts)
			require("gopher").setup(opts)
		end,
		build = function()
			vim.cmd [[silent! GoInstallDeps]]
		end
	}
}
