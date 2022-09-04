-- local bufmap = function(mode, lhs, rhs)
--   local opts = { buffer = true }
--   vim.keymap.set(mode, lhs, rhs, opts)
-- end
--
-- bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')


local opts = { noremap = true, silent = true }
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Telescope Mappings
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
-- vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fb",
--   ":Telescope file_browser<CR>",
--   { noremap = true }
-- )


-- NVIM-TREE
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
-- vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<cr>", opts)

-- Flutter-tools
-- vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRestart<cr>", opts)
-- vim.keymap.set("n", "<leader>ft", "<cmd>FlutterOutlineToggle<cr>", opts)
