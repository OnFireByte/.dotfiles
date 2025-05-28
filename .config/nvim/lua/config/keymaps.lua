-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = vim.keymap.set

map({ "n", "v" }, "<tab>", function()
  Util.format({ force = true })
end, { desc = "Format" })

-- Function to delete all mappings starting with 'gu' in specific modes
local function delete_gu_mappings(modes)
  for _, mode in ipairs(modes) do
    local mappings = vim.api.nvim_get_keymap(mode)
    for _, map in ipairs(mappings) do
      if map.lhs:match("^gu") then
        vim.keymap.del(mode, map.lhs)
      end
    end
  end
end

-- Call the function to delete mappings starting with 'gu' in normal and visual modes
delete_gu_mappings({ "n", "v" })

map({ "n", "v" }, "gu", vim.lsp.buf.definition)
map({ "n", "v" }, "gi", vim.lsp.buf.implementation)
map({ "n", "v" }, "go", "<C-o>", { desc = "Go Back" })
