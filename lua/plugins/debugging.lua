return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"leoluz/nvim-dap-go"
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")

			dapui.setup()
			require("dap-go").setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<Leader>db", function()
				dap.toggle_breakpoint()
			end, { desc = "Toggle Break Point" })
			vim.keymap.set("n", "<Leader>dc", function()
				dap.continue()
			end, { desc = "Continue" })
			vim.keymap.set("n", "<Leader>dc", function()
				dap.continue()
			end, { desc = "Continue" })
			vim.keymap.set("n", "<Leader>dr", function()
				require("dap-go").debug_test()
			end, { desc = "Run test" })
		end,
	},
}
