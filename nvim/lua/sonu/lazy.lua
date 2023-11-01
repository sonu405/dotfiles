local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  -- Language tools
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "go", 'gomod', 'gohtml' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    config = function()
      require('Comment').setup()
    end,
    lazy = false,
  },
  {
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.3',
      dependencies = {
        'nvim-lua/plenary.nvim',
      }
    }
  },
  -- themes
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme
      vim.cmd([[colorscheme everforest]])
    end
  },
  {
    'projekt0n/github-nvim-theme',
    lazy = true,
    config = function()
      require('github-theme').setup({
        -- ...
        dim_inactive = true,
      })
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "▎" },
          topdelete = { text = "契" },
          changedelete = { text = "▎" },
          untracked = { text = "▎" },
        },
      }
    end
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  { 'tpope/vim-fugitive' },
  { 'ThePrimeagen/harpoon' },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
      check_ts = true,
      ts_config = { java = false },
    }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
  -- latex
  {
    'lervag/vimtex',
    lazy = false,
  },
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  -- Lsp and cmp
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      -- Cmp
      {
        'hrsh7th/nvim-cmp',
        config = function()
          require('lsp-zero.cmp').extend()
        end
      },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      {
        'L3MON4D3/LuaSnip',
        version = "v2.*",
      },
      { 'rafamadriz/friendly-snippets' },
    },
  },
}
