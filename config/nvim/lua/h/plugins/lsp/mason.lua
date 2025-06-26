return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",
        "html",
        "cssls",
        "tailwindcss",
        "ts_ls", 
        "vue_ls",
        "emmet_ls",
        "pyright",
        "jdtls"
      },
      automatic_enable = true
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "eslint_d"
      },
    })
  end,
}
