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
list_snips = function()
  local ft_list = require('luasnip').available()[vim.o.filetype]
  local ft_snips = {}
  print(vim.o.filetype)
  for _, item in pairs(ft_list) do
    ft_snips[item.trigger] = item.name
  end
  print(vim.inspect(ft_snips))
end

vim.api.nvim_create_user_command('SnipList', list_snips, {})
