-- https://codeberg.org/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "leoluz/nvim-dap-go" },
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			local dap_go = require("dap-go")

			dap_go.setup()
			dapui.setup()

			dapui.setup()
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
			vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint)
			vim.keymap.set("n", "<Leader>dc", dap.continue)
			vim.keymap.set("n", "<leader>dn", dap.step_over)
			vim.keymap.set("n", "<leader>di", dap.step_into)
			vim.keymap.set("n", "<leader>do", dap.step_out)
			vim.keymap.set("n", "<leader>dq", dap.terminate)
		end,
	},
}
