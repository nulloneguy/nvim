vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo,spectre_panel nnoremap <silent> <buffer> q :close<CR> 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
    autocmd CmdWinEnter * quit
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

  augroup _lsp
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
  augroup end

  augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi link illuminatedWord LspReferenceText
  augroup END
]]

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

-- autocmd BufLeave * if (!exists('b:caret')) | let b:caret = winsaveview() | endif
-- autocmd BufEnter * if (exists('b:caret')) | call winrestview(b:caret) | endif

-- Autoformat
-- augroup _lsp
--   autocmd!
--   autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end