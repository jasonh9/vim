#### VIM setup

I have used other IDEs in the past and none have ever stacked up against a well organied vim setup. Text
editors like atom, notepad++, sublime text, and others alike are great editors but they use definitely use
more resources than vim, not only that but once you learn all the hotkeys and obtain master level competence with
vim modes the sky is the limit with what you can do. Vim plugins are also great resources for creating an ultimate
programming enviornment.

Here are the required dependencies for my VIM setup.

* VIM (install from your distro package manager, or compile from binary...)
* [Pathogen](https://github.com/tpope/vim-pathogen.git)
* [Solarized terminal colors](https://github.com/altercation/vim-colors-solarized.git)
* [YouCompleteMe code-completion](https://github.com/Valloric/YouCompleteMe.git)
* [NERDTree](https://github.com/scrooloose/nerdtree.git)
* [Vim-airline](https://github.com/vim-airline/vim-airline.git)
* [Vim-airlne-themes](https://github.com/vim-airline/vim-airline-themes.git)
* [Vim-gitgutter](https://github.com/airblade/vim-gitgutter.git)

##### Consolidate Vim extra files [ swap, locks, etc ]

> apply the following commands

```
$ mkdir ~/.vim/backups
$ mkdir ~/.vim/swaps
$ mkdir ~/.vim/undo
```

##### Include a makefile with C/C++ projects

I work with C/C++ on occasion, and i've created a 'all in one' makefile to compile and then execute without
ever exiting vim.

* [make file](https://github.com/jasonh9/generic-makefile)

Feel free to hack it apart and make it to your liking.


##### Enviornment in action!

