-- Buffer local mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
local addDescription = function(description)
	return {
		desc = description,
	}
end

vim.keymap.set("n", "<leader>cTaj", "<CMD>GoTagAdd json<CR>", addDescription("Add Json Tag"))
vim.keymap.set("n", "<leader>cTay", "<CMD>GoTagAdd yaml<CR>", addDescription("Add YAML Tag"))
vim.keymap.set("n", "<leader>cTrj", "<CMD>GoTagRm json<CR>", addDescription("Remove Json Tag"))
vim.keymap.set("n", "<leader>cTry", "<CMD>GoTagRm yaml<CR>", addDescription("Remove YAML Tag"))
