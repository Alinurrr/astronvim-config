---@type LazySpec
return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      
      vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false,
        desc = "Accept Copilot suggestion",
      })
      vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)", { desc = "Accept Copilot word" })
      vim.keymap.set("i", "<C-;>", "<Plug>(copilot-next)", { desc = "Next Copilot suggestion" })
      vim.keymap.set("i", "<C-,>", "<Plug>(copilot-previous)", { desc = "Previous Copilot suggestion" })
      vim.keymap.set("i", "<C-o>", "<Plug>(copilot-dismiss)", { desc = "Dismiss Copilot suggestion" })
    end,
  },

  -- Web development enhancements
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufRead",
    config = function()
      require("ts_context_commentstring").setup {
        enable_autocmd = false,
      }
    end,
  },

  -- Better syntax highlighting for web frameworks
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "svelte",
        "html",
        "css",
        "scss",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "go",
        "lua",
        "vim",
        "vimdoc",
        "query",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      incremental_selection = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },

  -- Enhanced commenting with context awareness
  {
    "numToStr/Comment.nvim",
    opts = function()
      return {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },

  -- Better file icons
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        astro = { icon = "", color = "#FF7E33", name = "Astro" },
        mdx = { icon = "", color = "#519aba", name = "Mdx" },
        ["robots.txt"] = { icon = "🤖", color = "#458588", name = "Robots" },
        [".env"] = { icon = "", color = "#faf743", name = "Env" },
        [".env.local"] = { icon = "", color = "#faf743", name = "EnvLocal" },
        [".env.development"] = { icon = "", color = "#faf743", name = "EnvDev" },
        [".env.production"] = { icon = "", color = "#faf743", name = "EnvProd" },
      },
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      require("ibl").setup {
        indent = {
          char = "▏",
        },
        scope = {
          enabled = false,
        },
      }
    end,
  },

  -- Color highlighter
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufRead",
    config = function()
      require("colorizer").setup {
        filetypes = {
          "css",
          "scss",
          "html",
          "javascript",
          "typescript",
          "vue",
          "svelte",
        },
        user_default_options = {
          tailwind = true,
        },
      }
    end,
  },

  -- Git integration enhancements
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gstatus", "Gblame", "Gpush", "Gpull" },
  },

  -- Better quickfix
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    config = function()
      require("bqf").setup()
    end,
  },

  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require("neoscroll").setup()
    end,
  },

  -- Better search
  {
    "kevinhwang91/nvim-hlslens",
    event = "BufRead",
    config = function()
      require("hlslens").setup()
    end,
  },

  -- Flash.nvim for fast navigation
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash"
      },
      {
        "S",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter"
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash"
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search"
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search"
      },
    },
  },
}
