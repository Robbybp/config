These files were obtained from:

https://github.com/git/git/tree/master/contrib/completion

They are intended to resolve a slowness issue with zsh's built-in git completion.
They should be used by adding the following lines to ~/.zshrc:

zstyle ':completion:*:*:git:*' script $HOME/.zsh/git-completion/git-completion.bash
fpath=($HOME/.zsh/git-completion $fpath)

Note that the git-completion.zsh file should be renamed to _git
