#VIM Configuration Files

## Install

```bash
$ cd ~
$ git clone https://rodrigoaraujo01@github.com/rodrigoaraujo01/vim_config.git .vim
$ cd ~/.vim
$ git submodule init
$ git submodule update
$ git submodule foreach submodule init
$ git submodule foreach submodule update
$ cd ~
$ ln -s .vim/.vimrc
```

## Plugins

### [Pathogen][]

Easy plugin management.

### [PEP8][]

Code verification against PEP8 guidelines.
Requires pep8 to be installed on the system
```bash
$ sudo pip install pep8
```

### [Snipmate][]

TextMate-style snippets for Vim.
This is a [custom branch][CustomSnipmate] to add new-style property to python snippets.

### [TaskList][]

Shows FIXME, TODO and XXX on a dedicated window.

[Pathogen]:       https://github.com/tpope/vim-pathogen
[PEP8]:           https://github.com/cburroughs/pep8.py
[Snipmate]:       https://github.com/msanders/snipmate.vim
[CustomSnipmate]: https://github.com/rodrigoaraujo01/snipmate.vim
[TaskList]:       https://github.com/vim-scripts/TaskList.vim
