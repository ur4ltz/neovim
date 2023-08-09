return {
  -- add gruvbox
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      local colors = require('gruvbox.palette').colors
      -- local test = {blabla + nahnah}

      vim.o.background = 'dark'
      require('gruvbox').setup({
        contrast = 'hard',
        palette_overrides = {},
        overrides = {
          SignColumn = { bg = colors.dark0_hard }
        },
      })
      vim.cmd.colorscheme('gruvbox')
    end,
  },
}
