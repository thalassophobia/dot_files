syntax on
colorscheme monokai

set nocompatible

"Don't wrap text
set nowrap

set backspace=indent,eol,start

set autoindent

"Indentation options
set shiftwidth=4
set tabstop=4

"sets backup as a ~Filename.foo
if has("vms")
	set nobackup
else
	set backup
endif


set history=50

"Display cursor location in bot right corner
set ruler

"show partial comand in bottom left corner
set showcmd

"display match for search pattern when halfway through typing it
set incsearch
"highlights search
set hlsearch

map Q gq


vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>

if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

filetype plugin indent on

autocmd FileType text setloacal textwidth=78

autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\	exe "normal! g`\"" |
	\ endif

set visualbell

set cmdheight=3

"line numbers
set number

"Can use mouse to click lines and enter v-mode
set mouse=a

