-- TODO: make r snippets available to rmarkdownfiles
require 'luasnip'
luasnip.add_snippets('markdown', {
  s('hi', {
    t 'hello world',
  }),
  -- s('asdt', {
  --   t 'as.data.table(',
  --   i(1, ''),
  --   t ')[',
  --   i(2, ''),
  --   t ']',
  -- }),
})
luasnip.filetype_extend('markdown', { 'r' })
