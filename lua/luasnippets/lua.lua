local luasnip = require 'luasnip'
--
-- local s = luasnip.snippet
-- local t = luasnip.text_node
-- local i = luasnip.insert_node

-- SNIPPETS:
luasnip.add_snippets('lua', {
  s('helw', {
    t 'hello world',
  }),
  -- snippet to define a generic lua snippet quickly
  s(
    'snip',
    fmta(
      [[
s('<tag>', 
{
<body>
}),
<finish>
      ]],
      {
        tag = i(1, 'tag'),
        body = i(2, 'body2'),
        finish = i(0),
      }
    )
  ),
})
