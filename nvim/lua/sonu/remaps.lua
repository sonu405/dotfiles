vim.g.mapleader = " "

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bi', builtin.buffers, {})


-- harpoon
local hui = require('harpoon.ui')
vim.keymap.set('n', '<leader>ha', require("harpoon.mark").add_file, {})

vim.keymap.set('n', '<leader>.', hui.toggle_quick_menu, {})
vim.keymap.set('n', '<leader>hn', hui.nav_next, {})
vim.keymap.set('n', '<leader>hp', hui.nav_prev, {})

-- The Primeagen
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
