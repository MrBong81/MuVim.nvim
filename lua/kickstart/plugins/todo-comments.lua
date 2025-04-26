-- Highlight todo, notes, etc in comments
return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = true,
      colors = {
        path = { 'PathYellow', '#db9f12' },
        keymap = { 'KeymapGreen', '#40854c' },
      },
      keywords = {
        RAND = { icon = '⚄', color = 'default' },
        PATH = { icon = '📁', color = 'path' },
        KEYMAP = { icon = '⌨', color = 'keymap' },
      },
    },
  },
}
-- RAND: test test
-- PATH: test test 2
-- KEYMAP: test keymap

-- vim: ts=2 sts=2 sw=2 et
