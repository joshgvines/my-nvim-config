local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

require("mason").setup()
require("mason-lspconfig").setup()

-- TODO: Add require check for servers
--require "user.lsp.lsp-handlers"
