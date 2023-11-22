
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})


-- Snippets
require('luasnip.loaders.from_lua').lazy_load({paths = "~/.config/nvim/LuaSnip/"})

require('luasnip.loaders.from_vscode').lazy_load()
