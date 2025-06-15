<h1 align="center">My Neovim config</h1>
My minimalist neovim config

![Homepage](images/Home.png)

![Editing](images/Editor.png)

## Installation
In case you want to try this config for yourself, you should clear your current neovim config (or save it somewhere)
```sh
rm -rf ~/.config/nvim
```
Then just clone this repo
```sh
git clone github.com/Saturn7569/neovim-config ~/.config/nvim
```

**Your neovim version must be `>=0.11` otherwise the lsp configs won't work and you will get a lua error**

Then just start neovim. This config uses lazy.nvim as a package manager. You might want to clean any scrap that is left after your last config bu that is done easily by typing `:Lazy` to open the lazy.nvim menu and pressing `X`. This cleans any unused packages.

## Updating
To update to the latest version of the config, just go to the `~/.config/nvim` file and pull the latetst version.
```sh
git pull origin
```

You might also want to update the lazy.nvim packages so just type `:Lazy` and then `U` to update all the packages.