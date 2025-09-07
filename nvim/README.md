## Switching to NeoVim

### Things I'd like to change or re-configure

1. Get vim-like process suspension to access parent terminal
   (i.e., don't use neovim's terminal emulator).
2. 4-space indent for Julia function declaration arguments.
   (I can fix this by applying the same patch to the julia.vim indent file.)
   Actually, this was a bit more complicated. I think treesitter was interfering
   with Julia indentation. Once I disable treesitter indentation for Julia
   and install the Julia-vim plugin, my Julia indentation is good.
3. Avoid auto-highlighting before I press enter.
   (Can disable this with `set nohlsearch` and `set noincsearch`.)
4. Block-red highlighting for misspelled words (I like the red+underline better).
   (This is easily fixable with `hi SpellBad ...` &mdash; see vimrc.)
5. In neovim's terminal emulator, I don't see color.
6. Latex shortcuts
7. Neovim doesn't give notice when a search reaches the start or end of a file.
8. Bad Python indentation in function arguments (if parens are not closed, I get
   an extra indent)
9. \<C-n\> doesn't bring up an autocomplete menu...
   I can fix this by disabling the autocomplete plugin used by kickstart.
10. No highlighting in CSV

### Things that work better about neovim

1. Backspace deletes a 4-space indent when editing Julia.
2. I can use the MacOS-default color scheme when in Tmux.
   For some reason, I am now not using this colorscheme...

### "Killer apps" of NeoVim

- Jump-to-definition
- More complicated autocomplete (entire line or code block)
- Syntax/error highlighting
- Fuzzy file finder (I spend an embarrassing amount of time in `sp <TAB>`)
  (although I can get a lot out of just doing `sp .` first)
- Git diff as +/-/~ in the sign column (maybe this is possible in vim as well?)

# Installation

## Julia

1. Install Julia-vim. E.g., with Lazy:
```lua
  {
    'JuliaEditorSupport/julia-vim',
    -- We need to always load this plugin because LatexToUnicode is available from other
    -- function types? Something like that...
    -- ft = 'julia',
  }
```
With built-in plugin management in Neovim 12+:
```lua
vim.pack.add({'https://github.com/JuliaEditorSupport/julia-vim'})
```

2. Apply the patch file to give function arguments a 4-space indent:
```
patch ~/.local/share/nvim/lazy/julia-vim/indent/julia.vim ~/config/vim/indent/julia.vim.patch
```
with built-in plugin management in Neovim 12+:
```
patch ~/.local/share/nvim/site/pack/core/opt/julia-vim ~/config/vim/indent/julia.vim.patch
```

3. Move the `after/ftplugin/julia.lua` file into the `~/.config/nvim` directory.
