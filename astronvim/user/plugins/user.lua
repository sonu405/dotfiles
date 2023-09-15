return {
  {
    "Shatur/neovim-ayu",
    -- name = "catppuccin",
    config = function()
      require('ayu').setup {}
    end,
  },
  {
    "ThePrimeagen/vim-be-good"
  },
  {
    "akinsho/toggleterm.nvim",
    enabled = false,
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.tabline = nil -- remove tabline
      return opts
    end,
  },
}
