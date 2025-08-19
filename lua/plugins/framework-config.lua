---@type LazySpec
return {
  -- Nuxt and Next.js specific configurations
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "vue", "tsx" })
    end,
  },

  -- Auto-detect project type and set specific settings
  {
    "AstroNvim/astrocore",
    opts = {
      autocmds = {
        framework_detection = {
          {
            event = { "BufEnter", "VimEnter" },
            callback = function()
              local cwd = vim.fn.getcwd()
              
              -- Nuxt detection
              if vim.fn.filereadable(cwd .. "/nuxt.config.js") == 1 or 
                 vim.fn.filereadable(cwd .. "/nuxt.config.ts") == 1 then
                vim.g.framework = "nuxt"
                -- vim.notify("Nuxt.js project detected", vim.log.levels.INFO)
              
              -- Next.js detection
              elseif vim.fn.filereadable(cwd .. "/next.config.js") == 1 or 
                     vim.fn.filereadable(cwd .. "/next.config.ts") == 1 then
                vim.g.framework = "nextjs"
                -- vim.notify("Next.js project detected", vim.log.levels.INFO)
              
              -- Express detection
              elseif vim.fn.filereadable(cwd .. "/package.json") == 1 then
                local package_json = vim.fn.readfile(cwd .. "/package.json")
                local package_content = table.concat(package_json, "\n")
                if string.find(package_content, '"express"') then
                  vim.g.framework = "express"
                  -- vim.notify("Express.js project detected", vim.log.levels.INFO)
                end
              
              -- Go detection
              elseif vim.fn.filereadable(cwd .. "/go.mod") == 1 then
                vim.g.framework = "go"
                -- vim.notify("Go project detected", vim.log.levels.INFO)
              end
            end,
          },
        },
      },
    },
  },


  -- Tailwind CSS IntelliSense
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    ft = { "html", "css", "scss", "javascript", "typescript", "vue", "svelte" },
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
    end,
  },

  -- Package.json helper
  {
    "vuki656/package-info.nvim",
    ft = "json",
    config = function()
      require("package-info").setup {
        colors = {
          up_to_date = "#3C4142",
          outdated = "#d19a66",
        },
        icons = {
          enable = true,
          style = {
            up_to_date = "|  ",
            outdated = "|  ",
          },
        },
        autostart = true,
        hide_up_to_date = false,
        hide_unstable_versions = false,
      }
    end,
  },

  -- Better JSON support
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "json", "json5", "jsonc" })
      end
    end,
  },
}
