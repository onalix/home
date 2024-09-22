local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require "lspconfig"

lspconfig.pyright.setup {
  cmd = { "pyright-langserver", "--stdio" },
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
      },
    },
  },
  filetypes = { "python" },
  single_file_support = true,
}

lspconfig.jedi_language_server.setup {
  cmd = { "jedi-language-server" },
  filetypes = { "python" },
  single_file_support = true,
}

lspconfig.mojo.setup {
  cmd = { "mojo-lsp-server" },
  filetypes = { "mojo" },
  single_file_support = true,
}
