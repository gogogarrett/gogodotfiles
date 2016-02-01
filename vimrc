" Use all the new VIM shiz
set nocompatible

" Load all plugins
source $HOME/.vim/vundle.vim

" Guess this enables syntax?
syntax enable

" Colorschemes
set t_Co=256
colorscheme OceanicNext
set background=dark

" IDK my bffjill?
syntax on
filetype on
filetype indent on
filetype plugin on

" ignore stupid swapfiles
set noswapfile

" Always show status.
set laststatus=2

" yank etc goes onto system clipboard, too
set clipboard=unnamed

" Ignore stupid 'Ex mode' http://www.bestofvim.com/tip/leave-ex-mode-good/
nnoremap Q <nop>

" Make `:` much easier to get to by using <SPACE> 
map <SPACE> :

" Make it faster to navigate the file by relative numbers
set relativenumber

" Use comma as leader. Much faster!
let mapleader = ","

" Remap esc - better to nav around and not get screwed over
imap jj <ESC>
imap jk <ESC>
imap kj <ESC>

" Open splits easier
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Easier window navigation - makes it easier to nav split panes
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" If you search `/something` and it leaves the annoying highlighted text
" `,n` will remove that shit
nmap <Leader>n :nohlsearch<CR>

" Whitespace shitz
set tabstop=2                     " Set tab to equal 4 spaces.
set softtabstop=2                 " Set soft tabs equal to 4 spaces.
set shiftwidth=2                  " Set auto indent spacing.
set shiftround                    " Shift to the next round tab stop.
set expandtab                     " Expand tabs into spaces.
set smarttab                      " Insert spaces in front of lines.
set listchars=tab:··,trail:·      " Show leading whitespace
set list                          " IDK MY BFFJILL?

" Mouse config for vim
if has("mouse")
  set mouse=a                   " Enable mouse everywhere.
  set mousemodel=popup_setpos   " Show a pop-up for right-click.
  set mousehide                 " Hide mouse while typing.
endif

" NerdTree Settings
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

