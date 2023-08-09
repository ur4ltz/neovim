-- Colorizer Setup

return {
  'NvChad/nvim-colorizer.lua',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('colorizer').setup({
      filetypes = { '*' },
      lua = { names = false },
      html = { names = false },
    })
  end,
}
