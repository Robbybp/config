# Vim configuration

For now, I just have instructions on what to do to get things working how I like.
Eventually, it may be nice to have a script that does this for me.

## Julia

1. Install `julia-vim` into `.vim/pack` as described
[here](https://github.com/JuliaEditorSupport/julia-vim/blob/master/INSTALL.md).

2. Apply the patch file to give function arguments a 4-space indent:
```
patch ~/.vim/pack/plugins/start/julia-vim/indent/julia.vim ~/config/vim/indent/julia.vim.patch
```

## Python

Grab the indent file from
[this repo](https://github.com/jeetsukumaran/vim-python-indent-black/tree/main/indent)
and copy it to `~/.vim/indent/python.vim`.

## Latex

I've been using [vim-latex](https://github.com/vim-latex/vim-latex) for a while,
but [vimtex](https://github.com/lervag/vimtex) seems to be a more popular/modern
alternative that also works with NeoVim. For now, these instructions describe
the process of installing vim-latex, but it may be worth trying out vimtex at
some point.

1. Clone [vim-latex](https://github.com/vim-latex/vim-latex) into
`~/.vim/pack/plugins/start`. vim-latex seems to be working.

2. Add `ftplugin/latex.vim` to the `~/.vim/ftplugin` directory to get two-space indents.
