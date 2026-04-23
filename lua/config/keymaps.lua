-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle LSP diagnostics (errors/warnings)
vim.keymap.set("n", "<leader>td", function()
  local current_level = vim.diagnostic.config().underline
  if current_level == false then
    -- Enable all diagnostics
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
    })
    print("LSP diagnostics enabled")
  else
    -- Disable all diagnostics
    vim.diagnostic.config({
      virtual_text = false,
      signs = false,
      underline = false,
      update_in_insert = false,
    })
    print("LSP diagnostics disabled")
  end
end, { desc = "Toggle LSP diagnostics" })

-- Alternative: Toggle only virtual text (inline errors/warnings)
vim.keymap.set("n", "<leader>tv", function()
  local config = vim.diagnostic.config()
  vim.diagnostic.config({
    virtual_text = not config.virtual_text,
    signs = config.signs,
    underline = config.underline,
    update_in_insert = false,
  })
  print("Virtual text " .. (config.virtual_text and "disabled" or "enabled"))
end, { desc = "Toggle diagnostic virtual text" })
