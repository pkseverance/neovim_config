local neoconf = require('neoconf')
neoconf.setup()

local lspconfig = require('lspconfig')
require('mason').setup()

require('mason-lspconfig').setup_handlers {
  function(server_name)
    local server_config = {}
    if (neoconf.get(server_name .. '.disable')) then
      return
    end
    if (server_name == 'volar') then
      server_config.filetypes = {'vue', 'typescript', 'javascript'}
    end
    lspconfig[server_name].setup(server_config)
  end,

  ['lua_ls'] = function()
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim'}
          }
        }
      }
   })
  end
}
