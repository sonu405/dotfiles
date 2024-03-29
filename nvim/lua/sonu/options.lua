vim.opt.diffopt:append "linematch:60"                     -- enable linematch diff algorithm
local options = {
  breakindent = true,                                     -- wrap indent to match  line start
  clipboard = "unnamedplus",                              -- connection to the system clipboard
  cmdheight = 1,                                          -- hide command line unless needed
  completeopt = { "menuone", "noselect" },                -- Options for insert mode completion
  copyindent = true,                                      -- copy the previous indentation on autoindenting
  cursorline = true,                                      -- highlight the text line of the cursor
  expandtab = true,                                       -- enable the use of space in tab
  fileencoding = "utf-8",                                 -- file content encoding for the buffer
  fillchars = { eob = " " },                              -- disable `~` on nonexistent lines
  foldenable = true,                                      -- enable fold for nvim-ufo
  foldlevel = 99,                                         -- set high foldlevel for nvim-ufo
  foldlevelstart = 99,                                    -- start with all code unfolded
  foldcolumn = vim.fn.has "nvim-0.9" == 1 and "1" or nil, -- show foldcolumn in nvim 0.9
  history = 100,                                          -- number of commands to remember in a history table
  ignorecase = true,                                      -- case insensitive searching
  infercase = true,                                       -- infer cases in keyword completion
  laststatus = 3,                                         -- global statusline
  linebreak = true,                                       -- wrap lines at 'breakat'
  mouse = "a",                                            -- enable mouse support
  number = true,                                          -- show numberline
  preserveindent = true,                                  -- preserve indent structure as much as possible
  pumheight = 10,                                         -- height of the pop up menu
  relativenumber = true,                                  -- show relative numberline
  scrolloff = 8,                                          -- number of lines to keep above and below the cursor
  shiftwidth = 2,                                         -- number of space inserted for indentation
  showmode = false,                                       -- disable showing modes in command line
  showtabline = 0,                                        -- always display tabline
  sidescrolloff = 8,                                      -- number of columns to keep at the sides of the cursor
  signcolumn = "yes",                                     -- always show the sign column
  smartcase = true,                                       -- case sensitive searching
  swapfile = false,                                       -- creates a swapfile
  smartindent = true,                                     -- make indenting smarter again
  splitbelow = true,                                      -- splitting a new window below the current one
  splitright = true,                                      -- splitting a new window at the right of the current one
  tabstop = 2,                                            -- number of space in a tab
  ruler = false,                                          -- Don't show the ruler
  termguicolors = true,                                   -- enable 24-bit RGB color in the TUI
  timeoutlen = 500,                                       -- shorten key timeout length a little bit for which-key
  undofile = true,                                        -- enable persistent undo
  updatetime = 300,                                       -- length of time to wait before triggering the plugin
  virtualedit = "block",                                  -- allow going past end of line in visual block mode
  wrap = false,                                           -- disable wrapping of lines longer than the width of window
  writebackup = false,                                    -- disable making a backup before overwriting a file
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

vim.api.nvim_set_var('netrw_liststyle', 3)
vim.api.nvim_set_var('netrw_banner', 0)
