local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
  local opts = { buffer = bufnr }

  vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
  vim.keymap.set({ 'n', 'x' }, '<leader>lf', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
  end, opts)
end)



require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'gopls', 'clangd', 'lua_ls', 'sqlls', 'svelte', 'marksman', 'tsserver', 'html', 'cssls', 'bashls'
  },
  handlers = {
    lsp_zero.default_setup,
  }
})

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['tsserver'] = { 'javascript', 'typescript' },
    -- ['rust_analyzer'] = {'rust'},
    ['gopls'] = { 'go', 'gomod', 'gowork', 'gotmpl' }
  }
})

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})
