
require("lspconfig")["rust-analyzer"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
