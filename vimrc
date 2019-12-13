" ==================================================
" Settings
syntax on

" Status line 2 always, 1 if more than one
set laststatus=0
set nocompatible              
set wrap
set linebreak
set number 
set ignorecase 
set spell
set spelllang=en,es
set hidden 
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=72
set tags=tags
set foldmethod=syntax
set foldlevel=2
" set textwidth=80

" Runtime path vundle, fzf, airline
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/YouCompleteMe
set rtp+=~/.fzf
se rtp+=$HOME/.config/nvim/vim-airline/        
se rtp+=$HOME/.config/nvim/vim-airline-themes/ 


" ==================================================
" Begin Plugins
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Visuals
Plugin 'tomasiser/vim-code-dark'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim'
Plugin 'flrnprz/plastic.vim'


" Files
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'junegunn/fzf.vim'
Plugin 'farmergreg/vim-lastplace'
Plugin 'ciaranm/securemodelines'

" Navigation
" Install EasyMotion for cool search
Plugin 'ap/vim-buftabline'

" File types, lint and syntax
Plugin 'gabrielelana/vim-markdown'
" Plugin 'dense-analysis/ale'
Plugin 'scrooloose/syntastic'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'tell-k/vim-autopep8'

" Syntax
Plugin 'Townk/vim-autoclose'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'


" AutoComplete
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" ==================================================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"filetype plugin on    " required
" Put your non-Plugin stuff after this line


" ==================================================
" Visual setup
if !has('gui_running')
  set t_Co=256
endif

"set t_Co=256
"set t_ut=
set background=dark
colorscheme codedark
"colorscheme plastic
set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad gui=undercurl


" ==================================================
" Bindings 
nnoremap zf :FZF ~<CR>
nnoremap <c-p> :FZF<CR>
inoremap <c-p> <ESC>:FZF<CR>
nnoremap <F2> :set laststatus=1<CR>
nnoremap <F3> :set laststatus=2<CR>

" Navigate windows
inoremap <Left> <Esc><C-w>h
nnoremap <Left> <C-w>h
inoremap <Right> <Esc><C-w>l
nnoremap <Right> <C-w>l

" Ctrl s saves
" nnoremap <c-s> :wa<CR>
" inoremap <c-s> <Esc>:wa<CR>
" vnoremap <c-s> <Esc>:wa<CR>

nnoremap <c-b> :NERDTreeToggle<CR>
inoremap <c-b> <ESC>:NERDTreeToggle<CR>
:nmap foo :echo('your leader is "<Leader>"')<Esc>
	

" ==================================================
" Variables definitions

let mapleader=","

" Lightline
let g:lightline = { 'colorscheme': 'simpleblack' }

" Prevents bug entering random text
" https://stackoverflow.com/questions/13621845/vim-pumvisible-call-putting-in-random-text
let g:AutoClosePreserveDotReg = 0



" Util Snips
let g:UltiSnipsExpandTrigger="<c-s>" 
let g:UltiSnipsJumpForwardTrigger="<c-j>" 
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" You complete me
"let g:ycm_filetype_blacklist = {}

" NERD tree
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
