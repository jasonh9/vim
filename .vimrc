execute pathogen#infect()
syntax on
filetype plugin indent on

" Security Options
set exrc
set secure

" fancy color stuff for vim
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" compile and run C/C++ source code in vim (without a makefile)
" map <F9> :w <CR> :!clear && g++ % <CR>
" map <C-F9> :w <CR> :!clear && g++ % -o %< && ./%< <CR>

" compile and run C/C++ source code in vim (with a makefile)
map <F9> :w <CR> :!clear && make all<CR>

" compile, run, then clean
map <C-F9> :w <CR> :!clear && echo -e 'Executing MAKE ALL ...\n' && make all && echo -e '\n\n________________________________________\n' && ./testDriver && echo -e '\n________________________________________\n' && echo -e 'Executing MAKE CLEAN...\n' && make clean<CR>

" vim airline themes
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
" vim-gitgutter


" YCM extra stuff
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
let g:ycm_warning_symbol = "\u26a0"
let g:ycm_error_symbol = "\u2639"
let g:ycm_autoclose_preview_window_after_insertion = 1

" Show hidden files in nerdtree
let NERDTreeShowHidden=1

" load nerdtree and point cursor to main on startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Close NERDTree if it is the last open buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" line breaking format stuffs
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" use different arrows for nerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Make tabs as wide as two spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
        set undodir=~/.vim/undo
endif

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" enable line numbers
set number

" highlight current line
set cursorline

