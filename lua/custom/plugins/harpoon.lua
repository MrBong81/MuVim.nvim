return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      -- REQUIRED
      harpoon:setup()

      -- KEYMAP: Harpoon Keymaps
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]add to harpoon list' })
      vim.keymap.set('n', '<leader>hh', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = '[H]arpoon quick menu' })

      vim.keymap.set('n', '<leader>q', function()
        harpoon:list():select(1)
      end, { desc = 'Select harpoon buffer 1' })
      vim.keymap.set('n', '<leader>w', function()
        harpoon:list():select(2)
      end, { desc = 'Select harpoon buffer 2' })
      vim.keymap.set('n', '<leader>e', function()
        harpoon:list():select(3)
      end, { desc = 'Select harpoon buffer 3' })
      vim.keymap.set('n', '<leader>r', function()
        harpoon:list():select(4)
      end, { desc = 'Select harpoon buffer 4' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>p', function()
        harpoon:list():prev()
      end, { desc = '[P]revious buffer' })
      vim.keymap.set('n', '<leader>n', function()
        harpoon:list():next()
      end, { desc = '[N]ext buffer' })
    end,
  },
}
