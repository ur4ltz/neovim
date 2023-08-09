local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require('lazy').setup({
  spec = 'plugins',
  -- defaults = { lazy = true, version = "*" },
  install = { colorscheme = { 'gruvbox' } },
  -- concurrency = 6,
  checker = {
    enabled = true,
    -- concurrency = 6,
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        'matchit',
        'matchparen',
        '2html_plugin',
        'getscript',
        'getscriptPlugin',
        'gzip',
        'logiPat',
        'netrw',
        'netrwFileHandlers',
        'netrwPlugin',
        'rrhelper',
        'tar',
        'tarPlugin',
        'tohtml',
        'tutor',
        'vimball',
        'vimballPlugin',
        'zip',
        'zipPlugin',
      },
    },
  },
  ui = {
    border = 'rounded',
  },
  diff = {
    cmd = 'git',
    -- cmd = 'diffview.nvim',
  },
  lockfile = vim.fn.stdpath('state') .. '/lazy-lock.json',
})

vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Lazy: Manage plugins' })
