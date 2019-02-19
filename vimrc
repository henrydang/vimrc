execute pathogen#infect()

inoremap jj <ESC>
set number

syntax enable
set background=dark
colorscheme solarized

set hidden
set history=100
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set hlsearch
noremap <Leader>r :CommandTFlush<CR>

filetype plugin on

" NERDTree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
map <C-n> :NERDTreeToggle<CR>

" auto closing
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
