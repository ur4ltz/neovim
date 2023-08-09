return {
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufReadPre',
    opts = {
      -- char = "▏",
      -- char = "│",
      char = '┊',
      buftype_exclude = { 'terminal', 'nofile' },
      filetype_exclude = { 'help', 'alpha', 'dashboard', 'neo-tree', 'Outline', 'Trouble', 'lazy' },
      show_trailing_blankline_indent = false,
      show_current_context = false,
    },
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      plugins = { spelling = true },
    },
    config = function(_, opts)
      local wk = require('which-key')
      wk.setup(opts)
      wk.register({
        -- ['<leader>f'] = { name = '+file/find' },
        -- ['<leader>g'] = { name = '+git' },
        ['<leader>l'] = { name = '+LSP' },
      })
    end,
  },
}
