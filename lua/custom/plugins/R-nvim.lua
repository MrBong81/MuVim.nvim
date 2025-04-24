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
        -- R_args = {"--quiet", "--no-save"},

        -- make sure that the console is on the right
        rconsole_width = 57,
        min_editor_width = 18,

        -- make sure the object browser appears bottom of the script
        objbr_place = 'script,below',

        -- enable autoquit of r when quitting nvim
        auto_quit = true,
        objbr_mappings = { -- Object browser keymap
          c = 'class', -- Call R functions
          ['<localleader>gg'] = 'head({object}, n = 15)', -- Use {object} notation to write arbitrary R code.
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
