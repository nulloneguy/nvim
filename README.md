# My Neovim setup

## Installation:
- install `nonevim` v0.6
- copy config to ``$HOME/.config/nvim/``
- run ``neovim``
- execute: ``PackerInstall``

## Features
- Fast plugin loading.
- File navigation with nvim-tree.lua.
- Managing tabs, buffers with bufferline.nvim.
- Beautiful and configurable icons with nvim-web-devicons.
- Pretty and functional statusline with galaxyline.nvim.
- Syntax highlighting with nvim-treesitter.
- Dashboard with dashboard.nvim
- Git diffs and more with gitsigns.nvim .
- NeoVim Lsp configuration with nvim-lspconfig.
- Easy to use format with format.nvim
- File searching, previewing image and text files and more with telescope.nvim.
- Autoclosing braces and html tags with nvim-autopairs.
Autocompletion with .
- Indentlines with indent-blankline.nvim.
- Useful snippets with LuaSnip.
- Tmux support with tmux.nvim

## Bloat
setup has 38 plugins installed by default, yet it is still very fast because it uses the Packer plugin manager. Packer.nvim allows you to lazy load plugins, meaning they only get loaded when absolutely required. 

## Run in Docker Container
This will leave your current Neovim configuration untouched. Once you exit Neovim, the image is deleted.
```
docker run -w /root -it --rm alpine:edge sh -uelic '
    apk add git nodejs neovim ripgrep alpine-sdk --update
    git clone https://github.com/nulloneguy/my-nvim-setup ~/.config/nvim
    nvim -c "autocmd User PackerComplete quitall" -c "PackerSync"
    nvim
    '
```
