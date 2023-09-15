return {
  colorscheme = 'ayu',
  options = {
    opt = {
      showtabline = 0, -- don't show tabline
    },
  },
  mappings = {
    n = { -- disable <leader>b mappings
      ["<leader>b"] = false,
      ["<leader>bb"] = false,
      ["<leader>bd"] = false,
      ["<leader>b\\"] = false,
      ["<leader>b|"] = false,
    },
  },
}
