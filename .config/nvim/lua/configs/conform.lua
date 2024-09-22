local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "isort", "black" },
  },
  format_on_save = {
    async = false,
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

local conform = require "conform"

conform.setup(options)
