require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local tabs = require("mappings.tabs")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>X", tabs.close_all_but_this, { desc = "Close All all bufs but this" })
map("n", "<leader>Z", tabs.close_buffers_to_left, { desc = "Close All all bufs to the left" })
map("n", "<leader>C", tabs.close_buffers_to_right, { desc = "Close All all bufs to the right" })

--telescope live grep (forgot if this is needed)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep", noremap = true, silent = true })
