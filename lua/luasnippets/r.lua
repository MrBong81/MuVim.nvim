local luasnip = require 'luasnip'
--
-- local s = luasnip.snippet
-- local t = luasnip.text_node
-- local i = luasnip.insert_node

luasnip.add_snippets('r', {
  s('hi', {
    t 'hello world',
  }),
  s('asdt', {
    t 'as.data.table(',
    i(1, ''),
    t ')[',
    i(2, ''),
    t ']',
  }),
})
