return {
  {
    'mbbill/undotree',
    cmd = 'UndotreeToggle',
    config = function()
      vim.keymap.set('n', '<leader>tu', vim.cmd.UndotreeToggle)
    end,
  },
  -- set up the keymap in normal mode
  vim.keymap.set('n', '<leader>tu', vim.cmd.UndotreeToggle, { desc = '[T]oggle [U]ndotree' }),
}
