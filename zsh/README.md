### Git completion in zsh

In addition to the zshrc file here, I use ohmyzsh for the gitfast plugin.
This seems to allow:
1. Completion of standard git commands like `git check[tab]`
2. Completion of branches, e.g. `git checkout myb[tab]`
3. Completion of files, e.g. `git add file[tab]`
4. 2. and 3., when using aliases.

To do this:
1. Install ohmyzsh using the instructions here: https://github.com/ohmyzsh/ohmyzsh
This creates a new .zshrc file and backs up my original.
2. Merge the two files together.
3. Make sure `gitfast` is loaded as the only plugin.
