---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- Language Servers
        "lua-language-server",
        "typescript-language-server",
        "gopls",
        "tailwindcss-language-server",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "yaml-language-server",
        "eslint-lsp",

        -- Formatters
        "stylua",
        "prettier",
        "gofumpt",
        "goimports",

        -- Linters
        "eslint_d",

        -- Tools
        "tree-sitter-cli",
      },
    },
  },
}
