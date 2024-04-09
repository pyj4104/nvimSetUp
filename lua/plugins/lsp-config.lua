return {
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup({PATH = "append"})
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
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.omnisharp.setup({})
			lspconfig.gopls.setup({})
			lspconfig.html.setup({})
			lspconfig.texlab.setup({})
			lspconfig.marksman.setup({})
			lspconfig.sqlls.setup({})
			lspconfig.rust_analyzer.setup({})

			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local addDescription = function(description)
						return {
							buffer = ev.buf,
							desc = description
						}
					end

					vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, addDescription("Go to Declaration"))
					vim.keymap.set('n', 'gd', vim.lsp.buf.definition, addDescription("Go to Definition"))
					vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, addDescription("Hover"))
					vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, addDescription("Go to Implementation"))
					vim.keymap.set('n', 'gk', vim.lsp.buf.signature_help, addDescription("Signature Help"))
					vim.keymap.set('n', '<leader>cwa', vim.lsp.buf.add_workspace_folder, addDescription("Add Workspace"))
					vim.keymap.set('n', '<leader>cwr', vim.lsp.buf.remove_workspace_folder, addDescription("Remove Workspace"))
					vim.keymap.set('n', '<leader>cwl', function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, addDescription("List Workspace"))
					vim.keymap.set('n', '<leader>cv', vim.lsp.buf.type_definition, addDescription("View Type Definition"))
					vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, addDescription("Rename"))
					vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, addDescription("Code Action"))
					vim.keymap.set('n', 'gr', vim.lsp.buf.references, addDescription("Go to References"))
				end,
			})
		end
	}
}
