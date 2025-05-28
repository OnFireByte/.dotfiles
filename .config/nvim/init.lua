-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.lsp.handlers["textDocument/semanticTokens/full"] = function() end

-- Disable LSP semantic token highlighting
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end
