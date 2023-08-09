return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/playground',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    event = 'BufReadPost',
    opts = {
      ensure_installed = {
        'arduino',
        'awk',
        'bash',
        'c',
        'cmake',
        'comment',
        'cpp',
        'diff',
        'fennel',
        'fish',
        'git_config',
        'gitattributes',
        'gitcommit',
        'gitignore',
        'git_rebase',
        'go',
        'gomod',
        'vimdoc',
        'html',
        'http',
        'javascript',
        'jq',
        'json',
        'json5',
        'jsonc',
        'latex',
        'lua',
        'luadoc',
        'make',
        'markdown',
        'markdown_inline',
        'objc',
        'org',
        'perl',
        'python',
        'query',
        'regex',
        'rst',
        'ruby',
        -- 'teal',
        'toml',
        'vim',
        'yaml',
      },
      highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false,
        use_languagetree = true,
      },
      indent = {
        enable = true,
      },
    },
    config = function(plugin, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
