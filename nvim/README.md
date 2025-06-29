## Switching to NeoVim

### Things I'd like to change or re-configure

1. Get vim-like process suspension to access parent terminal
   (i.e., don't use neovim's terminal emulator).
2. 4-space indent for Julia function declaration arguments.
3. Avoid auto-highlighting before I press enter.
   (Can disable this with `set nohlsearch` and `set noincsearch`.)
4. Block-red highlighting for misspelled words (I like the red+underline better).
   (This is easily fixable with `hi SpellBad ...` &mdash; see vimrc.)
5. In neovim's terminal emulator, I don't see color.
6. Latex shortcuts
7. Neovim doesn't give notice when a search reaches the start or end of a file.

### Things that work better about neovim

1. Backspace deletes a 4-space indent when editing Julia.
2. I can use the MacOS-default color scheme when in Tmux.
