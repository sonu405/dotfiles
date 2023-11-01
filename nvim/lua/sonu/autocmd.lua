-- Run gofmt + goimport on save
local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
--     require('go.format').goimport()
--   end,
--   group = format_sync_grp,
-- })

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim.api.nvim_create_autocmd("VimEnter", {
--   desc = "Open Neotree automatically",
--   callback = function()
--     vim.cmd "Neotree current"
--   end
-- })
