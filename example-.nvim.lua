-- Project-specific Neovim configuration
-- Place this file as .nvim.lua in your project root

-- Disable format on save for this project
vim.g.autoformat_enabled = false

-- Or disable for specific file types only
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
--   callback = function()
--     vim.b.autoformat_enabled = false
--   end,
-- })