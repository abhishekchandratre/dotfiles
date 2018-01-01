" basic settings 
set nocompatible
set encoding=utf-8
set showcmd
set showmatch
set nojoinspaces
set autoindent
set ruler
set laststatus=2
set wildmenu
set display+=lastline " dont show @ is line does not fit
set formatoptions+=j " delete comment character when joining commented lines
setglobal tags-=./tags tags-=./tags; tags^=./tags;
set cursorline
" Clipboard
set clipboard=unnamed

" wrap setting
set wrap
set nolinebreak

" leader settings
let mapleader = "\<SPACE>"
let maplocalleader="//"

" tab settings
set tabstop=4
set shiftwidth=4
set noexpandtab
hi SpecialKey guifg=NONE guibg=NONE

" search settings
set hlsearch
set ignorecase
set smartcase
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]
nnoremap <leader>hl :set hlsearch!<CR>

" scroll settings
set scrolloff=5

" set list char
set list
set listchars=tab:│\ ,extends:›,precedes:‹,nbsp:·,trail:·

" numberline settings
set number
set relativenumber
map <leader>r :call function#cycle_numbering()<CR>

" set colours
set t_ut=
set termguicolors
set textwidth=0 " do not break lines
set colorcolumn=80

" increment and decrement with <c-a> <c-x>
set nrformats= " always decimal increment

" movements & split navigation
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" get help
nnoremap <leader>h :help <C-R><C-W><CR>

" remember last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" disable comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" reload vimrc
map <silent> <leader>v :source ~/.vimrc<CR>:exe ":echo 'vimrc reloaded'"<CR>
map <silent> <leader>e :e ~/.vim/configs/general.vim<CR>:cd ~/.vim<CR>:exe ":echo 'vimrc opened'"<CR>
map <silent> <leader>cd :cd %:h<CR>

" set colorscheme
colorscheme solarized8_dark_high
map <leader>b :colorscheme solarized8_dark_high<CR>
map <leader>w :colorscheme solarized8_light_high<CR>

" folding
nnoremap <s-tab> za
set foldlevelstart=1
set foldmethod=syntax
