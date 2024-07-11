local lspconfig = require("lspconfig")
local lsp_containers = require("lspcontainers")

lspconfig.pylsp.setup({
  cmd = lsp_containers.command("pylsp")
})
lspconfig.rust_analyzer.setup({
  cmd = lsp_containers.command("rust_analyzer")
})
lspconfig.standardrb.setup({
  cmd = {
    "docker",
    "run",
    "--rm",
    "--name",
    "standardrb-lsp",
    "-i",
    "ruby",
    "sh",
    "-c",
    "gem install standardrb && standardrb --lsp"
  }
})
