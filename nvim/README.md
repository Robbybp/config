## Switching to NeoVim

### Things I'd like to change or re-configure

1. Get vim-like process suspension to access parent terminal
   (i.e., don't use neovim's terminal emulator).
2. 4-space indent for Julia function declaration arguments.
   (I can fix this by applying the same patch to the julia.vim indent file.)
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
