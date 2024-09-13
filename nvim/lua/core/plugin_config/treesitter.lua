require('nvim-treesitter.configs').setup {
  -- A list of parser names, or 'all'
  ensure_installed = {'lua', 'python', 'rust', 'go', 'typescript', 'tsx', 'vue', 'javascript', 'css', 'json', 'yaml', 'toml', 'markdown', 'markdown_inline', 'bash'},

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
