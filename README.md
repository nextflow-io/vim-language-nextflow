# vim-language-nextflow

Vim plugin for Nextflow.

The original version of this plugin is based on [Luke Goodsell's](https://github.com/LukeGoodsell/nextflow-vim) plugin and was later on improved.

## Installation

**NixVim**

```nix
let
  vim-language-nextflow = pkgs.vimUtils.buildVimPlugin {
    name = "vim-language-nextflow";
    src = builtins.fetchGit {
      url = "https://github.com/nextflow-io/vim-language-nextflow";
      rev = "0be2ac1b325427617e4926c117fe1cdb6a8c3a4e"; # Change commit SHA accordingly!
    };
  };
in
{
  extraPlugins = [ vim-language-nextflow ];
}
```

**VimPlug**

```vim
call plug#begin('~/.vim/plugged')

" Change the commit SHA accordingly!
Plug 'nextflow-io/vim-language-nextflow', { 'commit': '0be2ac1b325427617e4926c117fe1cdb6a8c3a4e' }

call plug#end()

```
