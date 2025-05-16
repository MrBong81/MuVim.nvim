return {
  {
    'kiyoon/jupynium.nvim',
    -- build = "pip3 install --user .",
    -- build = "uv pip install . --python=$HOME/.virtualenvs/jupynium/bin/python",
    build = 'conda run --no-capture-output -n sklearn-env pip install .',
    config = function()
      require('jupynium').setup {
        --- For Conda environment named "jupynium",
        python_host = { 'conda', 'run', '--no-capture-output', '-n', 'jupynium', 'python' },

        -- jupyter_command = {},

        default_notebook_URL = 'localhost:8888',
      }
    end,
  },
  'rcarriga/nvim-notify', -- optional
  'stevearc/dressing.nvim', -- optional, UI for :JupyniumKernelSelect
}
