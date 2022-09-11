-- vim.cmd [[ colorscheme darkplus ]]

-- require("onedark").setup {
--   style = "darker",
--   transparent = true, -- Show/hide background
-- }
-- require("onedark").load()



-- oxo cargo
--  vim.o.background = "dark" -- triggers dark colorscheme
-- vim.cmd [[colorscheme oxocarbon]];

-- Tokyo Night
require("tokyonight").setup({
  style = "night",
  transparent = "true",
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})
vim.cmd [[colorscheme tokyonight]];


-- oceanic material
-- vim.g.oceanic_material_transparent_background = true;
-- vim.g.oceanic_material_allow_italic = true;
--
-- vim.cmd [[colorscheme oceanic_material]];
-- vim.cmd [[colorscheme catppuccin]];
