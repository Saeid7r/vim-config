set nocompatible
function ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction
set guifont=Monospace\ 13
map <F11> <Esc>:call ToggleGUICruft()<cr>
set guioptions=i
filetype off
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme', {'as':'PaperColor'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()
filetype plugin indent on
syntax enable
set background=dark
colorscheme dracula
highlight Normal ctermbg=NONE
highlight LineNr guibg=#484458 ctermbg=NONE
highlight LineNr guifg=darkgrey ctermfg=darkgrey
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_inactive_alt_sep=1
let g:airline_theme='papercolor'
let g:airline_detect_modified=1
set number
set path+=**
set wildmenu
set backspace=indent,eol,start
set hidden
set autoindent
set smartcase
set smarttab
set pastetoggle=<F2>
set hlsearch
set incsearch
set encoding=utf-8
set ignorecase
set smartcase
set viminfo='100,<9999,s100
set splitbelow splitright
let my_term=$TERM
if my_term == 'xterm-256color'
        exec('set termbidi')
endif
set termbidi
nnoremap <leader><space> :nohlsearch<CR> :onl<CR>
if has("vms")
	set nobackup
else
	set nobackup
	set backupext=.bak
endif
set history=50
set showcmd
set showmode
set incsearch
set mouse=a
vmap Q gq
nmap Q gqap
vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=75
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.='\(^\|\s\s\)\zs\.\S\+'
set conceallevel=0
set cursorline
set showmatch
set lazyredraw
set encoding=utf-8
set softtabstop=8
set tabstop=8
set expandtab
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" Automatically save and load folds
autocmd BufWinLeave *.* silent! mkview
autocmd BufWinEnter *.* silent! loadview"
let mapleader="\\"
nnoremap ; :
nnoremap <leader>ex :Lex<CR>25<c-w><s-\|>
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap <leader>n :set rnu!<CR>
noremap <S-z> :set rightleft!<CR> 
noremap <leader>p <Esc>bi(<Esc>ea)<Esc>
noremap <leader>c bi{<Esc>ea}<Esc>
autocmd FileType make setlocal noexpandtab
autocmd FileType text setlocal textwidth=70
autocmd FileType text setlocal linebreak
autocmd FileType text setlocal wrap
autocmd FileType text noremap j gj
autocmd FileType text noremap k gk
autocmd FileType plaintex noremap j gj
autocmd FileType plaintex noremap k gk
autocmd BufReadPost *
	    \ if line("'\"") > 1 && line("'\"") <= line("$") |
	    \   exe "normal! g`\"" |
	    \ endif
highlight ColorColumn guibg=lightblue ctermbg=lightblue
function Toggle_colorcolumn()
        if &colorcolumn != 80
                exec('set colorcolumn=80')
        else
                exec('set colorcolumn=0')
        endif
endfunction
noremap <leader>h :call Toggle_colorcolumn()<CR>

