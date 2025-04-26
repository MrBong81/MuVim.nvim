return {
  {
    'R-nvim/R.nvim',
    -- Only required if you also set defaults.lazy = true
    lazy = false,
    version = '~0.9.21',
    config = function()
      -- Create a table with the options to be passed to setup()
      ---@type RConfigUserOpts
      local opts = {
        R_args = { '--quiet', '--no-save' },

        -- make sure that the console is on the right
        rconsole_width = 57,
        min_editor_width = 18,

        -- make sure the object browser appears bottom of the script
        objbr_place = 'script,below',

        -- enable autoquit of r when quitting nvim
        auto_quit = true,
        -- use browser as default pdf viewer (OS default)
        pdfviewer = '',

        -- disable highlighting of the terminal
        hl_term = false,

        -- use hook to configure specific keybinds and load options
        hook = {
          on_filetype = function()
            -- FIX: make it work only when opening rmd, quarto etc...
            -- require('r.send').cmd 'Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")'

            -- vim.api.nvim_buf_set_keymap(0, 'n', '<LocalLeader>lp', function()
            --   require('r.send').cmd 'Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")'
            -- end, { { desc = 'TESTTEST' } })

            -- PATH: path to pandoc, to enable markdown actions
            vim.g.RSTUDIO_PANDOC = 'C:\\Users\\Ermenegisto\\AppData\\Local\\nvim\\scripts\\rmd_load_pandoc'

            -- KEYMAP: some keymaps for R-nvim
            vim.api.nvim_buf_set_keymap(
              0,
              'n',
              '<LocalLeader>pl',
              '<Cmd>RSourceDir ' .. vim.g.RSTUDIO_PANDOC .. '<CR>',
              { desc = '[P]andoc [L]oad for rmd and quarto' }
            )

            vim.api.nvim_buf_set_keymap(0, 't', '<C-n>', '<Esc>', { desc = 'Quit Terminal' })
          end,
        },
        objbr_mappings = { -- Object browser keymap
          c = 'class', -- Call R functions

          -- Use {object} notation to write arbitrary R code.
          ['<localleader>gg'] = 'head({object}, n = 15)',
          ['<localleader>ls'] = 'ls({object})',

          v = function()
            require('r.browser').toggle_view()
          end,
        },
        disable_cmds = {
          'RClearConsole',
          'RCustomStart',
          'RSPlot',
          'RSaveClose',
        },
      }
      require('r').setup(opts)
    end,
  },
  --  {
  --    'R-nvim/cmp-r',
  --    {
  --      'hrsh7th/nvim-cmp',
  --      config = function()
  --        require('cmp').setup { sources = { { name = 'cmp_r' } } }
  --        require('cmp_r').setup {}
  --      end,
  ----    },
  --  },
}
