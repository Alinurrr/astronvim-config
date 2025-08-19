---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      diagnostics = { virtual_text = true, virtual_lines = false },
      highlighturl = true,
      notifications = true,
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    filetypes = {
      extension = {
        mdx = "markdown",
      },
      filename = {
        [".env"] = "sh",
        [".env.local"] = "sh",
        [".env.development"] = "sh",
        [".env.production"] = "sh",
      },
      pattern = {
        ["%.env%.[%w_.-]+"] = "sh",
      },
    },
    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = false,
        expandtab = true,
        shiftwidth = 2,
        tabstop = 2,
        softtabstop = 2,
        smartindent = true,
        ignorecase = true,
        smartcase = true,
        updatetime = 250,
        timeoutlen = 300,
        scrolloff = 8,
        sidescrolloff = 8,
        termguicolors = true,
      },
      g = {
        autoformat_enabled = true,
        autopairs_enabled = true,
        cmp_enabled = true,
        diagnostics_mode = 3,
        icons_enabled = true,
        ui_notifications_enabled = true,
      },
    },
    mappings = {
      n = {
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },
        ["<Leader>w"] = { "<cmd>w<cr>", desc = "Save" },
        ["<Leader>q"] = { "<cmd>confirm q<cr>", desc = "Quit" },
        ["<Leader>/"] = { function() require("Comment.api").toggle.linewise.current() end, desc = "Comment line" },
        ["<C-h>"] = { "<C-w>h", desc = "Move to left split" },
        ["<C-j>"] = { "<C-w>j", desc = "Move to below split" },
        ["<C-k>"] = { "<C-w>k", desc = "Move to above split" },
        ["<C-l>"] = { "<C-w>l", desc = "Move to right split" },
        ["<C-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
        ["<C-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
        ["<C-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
        ["<C-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
      },
      v = {
        ["<Leader>/"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Toggle comment" },
      },
      i = {
        ["<C-s>"] = { "<esc><cmd>w<cr>", desc = "Save file" },
      },
    },
  },
}
