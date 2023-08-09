
local opt = vim.opt
local g = vim.g
local fn = vim.fn

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

opt.mouse = 'n'

vim.o.updatetime = 300

vim.o.timeout = true
vim.o.timeoutlen = 300

-- opt.clipboard:append({'unnamedplus'})
-- opt.clipboard = [[unnamed,unnamedplus]]
-- opt.clipboard = 'unnamed'
opt.grepprg = 'rg --vimgrep'
opt.grepformat = '%f:%l:%c:m'

vim.opt.fileencodings = 'utf-8,cp1251,cp866,ucs-2,default,latin1'

--------------------------------------------------------------------------------
-- Display
--------------------------------------------------------------------------------

opt.cursorline = true
opt.laststatus = 3
opt.number = true
opt.showmode = false
opt.showtabline = 2
-- opt.signcolumn = 'yes:2'
opt.signcolumn = 'auto:9'
opt.termguicolors = true
opt.wrap = false

opt.winbar = '%f %m'

--------------------------------------------------------------------------------
-- List Chars
--------------------------------------------------------------------------------

opt.list      = true
opt.listchars = {
  trail    = '•',
  eol      = '↴',
  tab      = '» ',
  extends  = '❯',
  precedes = '❮',
  nbsp     = '_',
  space    = ' ',
}

--------------------------------------------------------------------------------
-- Search and Complelete
--------------------------------------------------------------------------------

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

--------------------------------------------------------------------------------
-- Backup / Undo / Swap
--------------------------------------------------------------------------------

vim.opt.backupdir = vim.fn.stdpath('state') .. '/backup//'
opt.backup = true
vim.opt.undodir = vim.fn.stdpath('state') .. '/undo//'
opt.undofile = true
opt.swapfile = true

if fn.has('nvim-0.9') == 1 then
  opt.diffopt:append('linematch:60')
end

--------------------------------------------------------------------------------
-- Diagnostic
--------------------------------------------------------------------------------

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = 'rounded',
    close_events = { 'CursorMoved', 'BufHidden', 'InsertCharPre' },
  }
)

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded',
  }
)

vim.diagnostic.config {
  underline = true,
  virtual_text = false,
  signs = true,
  update_in_insert = false,
}

fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

