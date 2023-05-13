" Numeros
set number
set relativenumber

" Teclado
set encoding=UTF-8
syntax on

"Busqueda ignorando mayusc-minusc
set ignorecase

let mapleader=" "

" Charging Plugins
call plug#begin('./nvim/site/autoload/plugged')
	Plug 'https://github.com/scrooloose/nerdtree'
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	" If you want to have icons in your statusline choose one of these
	Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

" Plugins config
colorscheme tokyonight

" Basic maps for explorer
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeCWD<CR>

" Write and Quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :qall<CR>
noremap <leader>c :close<CR>

" Moving betwen slices
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move betwen tabs
map <S-h> :tabn<CR>
map <S-l> :tabp<CR>

map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt
map <A-0> :tablast<CR>

let g:airline_theme='supernova'

" NERDTree remapeado de atajos
let g:NERDTreeShowHidden = 1
"let g:NERDTreeMinimalUI = 1
"let g:NERDTreeIgnore = []
"let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" no sirve aun let NERDTreeMapOpenInTabSilent='<Return>'

"	Faltan atajos para cambiar de tama;o y mover las pesta;as/splits.
"	Falta crear archivo en nerdtree, borrar, renombrar, abrir en diferente
"	pesta;a.

