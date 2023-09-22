return {
  colorscheme = "everforest",
  mappings = {
    n = { -- disable <leader>b mappings
      ["<leader>b"] = false,
      ["<leader>bb"] = false,
      ["<leader>bd"] = false,
      ["<leader>b\\"] = false,
      ["<leader>b|"] = false,
      -- Custom
      ["<leader>bi"] = {
        function()
          require('telescope.builtin').buffers()
        end
        , desc = "Open buffers telescope"
      },
      ["<leader>."] = {
        function()
          require('telescope.builtin').find_files()
        end
        , desc = "Find files telescope"
      },
      ["<leader>bk"] = { "<cmd>bd<cr>", desc = "delete buffer" },
    },
  },
}
