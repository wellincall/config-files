require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "cssls",
    "dockerls",
    "docker_compose_language_service",
    "elixirls",
    "html",
    "jsonls",
    "tsserver",
    "markdown_oxide",
    "yamlls"
  }
})

local lspconfig = require("lspconfig")
lspconfig.clangd.setup({})
lspconfig.cssls.setup({})
lspconfig.dockerls.setup({})
lspconfig.docker_compose_language_service.setup({})
lspconfig.elixirls.setup({})
lspconfig.html.setup({})
lspconfig.jsonls.setup({})
lspconfig.tsserver.setup({})
lspconfig.markdown_oxide.setup({})
lspconfig.yamlls.setup({})
