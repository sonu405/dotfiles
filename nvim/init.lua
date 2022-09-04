require "user.plugins"

-- TO INCREASE STARTUP TIME
_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache') .. '/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache') .. '/luacache_modpaths',
  }
}
require("impatient")
require "user.lsp"
require "user.cmp"
require "user.options"
require "user.mappings"
require "user.colorscheme"
require "user.treesitter"
require "user.autopairs"
-- require "user.flutter-tools"
require "user.telescope"
require "user.tree"
require "user.autocmds"
-- require "user.lualine"
-- require "user.toggleterm"
require "user.latex"

-- vim.cmd('source ' .. 'lua/user/latex.vim')
