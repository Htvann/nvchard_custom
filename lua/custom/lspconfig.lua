local lspconfig = require "plugins.configs.lspconfig" -- Require the module once
local on_attach = lspconfig.on_attach -- Alias the module properties
local capabilities = lspconfig.capabilities -- Alias the module properties

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
