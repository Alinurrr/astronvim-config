---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"

    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Formatters
      null_ls.builtins.formatting.prettier.with {
        extra_filetypes = { "astro", "svelte" },
        extra_args = { "--single-quote", "--trailing-comma", "es5" },
      },
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.gofumpt,
      null_ls.builtins.formatting.goimports,
    })
  end,
}
