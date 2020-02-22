" ==================================================
" Settings
syntax on

" Status line 2 always, 1 if more than one
set laststatus=0
set nocompatible              
set wrap
set filetype=on
set linebreak
set number 
set ignorecase 
set spell
set spelllang=en,es
set hidden 
set tabstop=4
set shiftwidth=4
set expandtab
set tags=tags
set foldmethod=syntax
set foldlevel=2
" set colorcolumn=80
" set textwidth=80
" Kitty backround bug
let &t_ut=''

" Runtime path vundle, fzf
" set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/YouCompleteMe
set rtp+=~/.fzf


" ==================================================
" Begin Plugs
" call vundle#begin()
call plug#begin('~/.vim/plugged')

" Start page
Plug 'mhinz/vim-startify'
Plug 'tweekmonster/startuptime.vim'

" Visuals
Plug 'tomasiser/vim-code-dark'
" Plug 'itchyny/lightline.vim'
" Plug 'flrnprz/plastic.vim'
" Plug 'luochen1990/rainbow'
" Plug 'relastle/bluewery.vim'
Plug 'NLKNguyen/papercolor-theme'

" Files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'ciaranm/securemodelines'

" Navigation
" Install EasyMotion for cool search
" Plug 'ap/vim-buftabline' 
Plug 'bling/vim-bufferline'
Plug 'majutsushi/tagbar'

" File types, lint and syntax
" Plug 'gabrielelana/vim-markdown'
" Plug 'dense-analysis/ale'
Plug 'scrooloose/syntastic'
Plug 'epilande/vim-es2015-snippets'
" Plug 'epilande/vim-react-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'tell-k/vim-autopep8'

" Syntax
Plug 'Townk/vim-autoclose'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jparise/vim-graphql'
Plug 'supercollider/scvim'
" Plug 'chrisbra/unicode.vim'

" Typescript
Plug 'Quramy/tsuquyomi'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
" Plug 'herringtondarkholme/yats.vim'

" AutoComplete
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" All of your Plugs must be added before the following line
call plug#end()


" ==================================================
" Visual setup
if !has('gui_running')
  set t_Co=256
endif

" set background=dark
colorscheme codedark
" set background=dark
" set background=light
" colorscheme PaperColor
" colorscheme sublimemonokai
" colorscheme solarized
set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad gui=undercurl

" ==========================================================================
" Typescript colors

" peitalin/vim-jsx-typescript
" set filetypes as typescript.tsx
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
"
" " dark red
" hi tsxTagName guifg=#E06C75

" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxCloseTagName guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575

" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic
" " light-grey
" hi tsxTypeBraces guifg=#999999
" " dark-grey
" hi tsxTypes guifg=#666666
" hi ReactState guifg=#C176A7
" hi ReactProps guifg=#D19A66
" hi ApolloGraphQL guifg=#CB886B
" hi Events ctermfg=204 guifg=#56B6C2
" hi ReduxKeywords ctermfg=204 guifg=#C678DD
" hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
" hi WebBrowser ctermfg=204 guifg=#56B6C2
" hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
" let g:yats_host_keyword = 1
" set re=1


" ==================================================
" Bindings 
nnoremap zf :FZF ~<CR>
nnoremap <c-p> :FZF<CR>
inoremap <c-p> <ESC>:FZF<CR>
nnoremap <F2> :set laststatus=1<CR>
nnoremap <F3> :set laststatus=2<CR>

" Comment lines
nnoremap <c-c> gcc

" Navigate windows
inoremap <Left> <Esc><C-w>h
nnoremap <Left> <C-w>h
inoremap <Right> <Esc><C-w>l
nnoremap <Right> <C-w>l

" Ctrl s saves
" nnoremap <c-s> :wa<CR>
" inoremap <c-s> <Esc>:wa<CR>
" vnoremap <c-s> <Esc>:wa<CR>
" ioremap <BS> :echo('quiubole')<Esc>
" inoremap <Del> <NOP>

nnoremap <c-b> :NERDTreeToggle<CR>
inoremap <c-b> <ESC>:NERDTreeToggle<CR>
:nmap foo :echo('your leader is "<Leader>"')<Esc>
	
" Structure
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }         
" ==================================================
" Variables definitions

let mapleader=","

" Lightline
" let g:lightline = { 'colorscheme': 'simpleblack' }

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

" NERD tree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" This is for solarized
" syntax on
" let g:solarized_termcolors=256
" set t_Co=256 
" set background=dark
" colorscheme solarized

" Color brackets
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Color jsx
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Emmet
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Supercollider
let g:scFlash = 1




" =================================================
" coc.nvim
"
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
