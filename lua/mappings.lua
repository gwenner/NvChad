require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-j>", "<C-E>")
map("n", "<C-k>", "<C-Y>")

-- Nvim DAP
local dap = require("dap")
map("n", "<leader>dl", function() dap.step_into() end, { desc = "Debugger step into" })
map("n", "<leader>dj", function() dap.step_over() end, { desc = "Debugger step over" })
map("n", "<leader>dk", function() dap.step_out() end, { desc = "Debugger step out" })
map("n", "<leader>dc", function() dap.continue() end, { desc = "Debugger continue" })
map("n", "<leader>db", function() dap.toggle_breakpoint() end, { desc = "Debugger toggle breakpoint" })
map("n", "<leader>de", function() dap.terminate() end, { desc = "Debugger reset" })
map("n", "<leader>dr", function() dap.run_last() end, { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<leader>dt", function() vim.cmd.RustLsp("testables") end, { desc = "Debugger testables" })

