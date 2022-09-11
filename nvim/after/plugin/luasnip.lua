
local types = require "luasnip.util.types"

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local extras = require("luasnip.extras")
local m = extras.m
local l = extras.l
local rep = extras.rep
local postfix = require("luasnip.extras.postfix").postfix


ls.config.set_config {
  -- This tells luasnips to  remember to keep around the last snippet
  -- You can jump back to it even if you move outside of the selection
  history = true,

  updateevents = "TextChanged,TextChangedI",

  enable_autosnippets = true,

  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<--", "Error" } },
      }
    }
  }
}


ls.add_snippets('all', {
  s("ternary", {
    i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
  })
})
-- ls.add_snippets('go', {
-- })
ls.add_snippets('tex', {
  s("im", {
    t{"$"},i(1),t("$"), i(0)
  }),
  s("dm", {
    t{"\\["}, i(1), t{".\\]"}
  }),
  s("bf",{
    t{"\\textbf{"},i(1),t{"}"},i(0)
  }),
  s("it",{
    t{"\\textit{"},i(1),t{"}"},i(0)
  }),
  -- s("dn", {
  --   t "from: ",
  --   i(1),
  --   t { "", "to: " },
  --   d(2, function(args)
  --     return sn(nil, {
  --       i(1, args[1]),
  --     })
  --   end, {
  --     1,
  --   }),
  -- }),
  -- s("begin", {
  --   t("\\begin{}"),
  --   i(1),
  --   t {"", "\\end{}"},
  --   t(0)
  -- })
})

