local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local completion = null_ls.builtins.completion

-- https://github.com/prettier-solidity/prettier-plugin-solidity
-- npm install --save-dev prettier prettier-plugin-solidity
null_ls.setup {
  debug = false,
  sources = {
    --formatting.prettier_d_slim.with {
    --  extra_filetypes = { "toml", "solidity" },
    --  extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
    --},
    --formatting.black.with { extra_args = { "--fast" } },
    diagnostics.eslint_d,
    formatting.stylua,
    completion.spell,
    completion.luasnip,
  },
}
