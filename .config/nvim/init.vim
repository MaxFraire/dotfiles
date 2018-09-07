" ======= Plugins starts ================================================================================ 
 call plug#begin('~/.vim/plugged')

	 Plug 'tpope/vim-sensible'
	 Plug 'junegunn/seoul256.vim'
	 Plug 'dracula/vim', { 'as': 'dracula' }
	 Plug 'kaicataldo/material.vim'
	 Plug 'scrooloose/nerdcommenter'
	 Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
	 Plug 'kien/ctrlp.vim'
	 "Plug 'powerline/powerline'
    Plug 'justinmk/vim-sneak'

 call plug#end()
 " ====== Plugins Ends ====================================================================================

syntax enable 								                            " Enable color syntax Highlighting
set hlsearch                                                                   " Set search highlighting on 
set nocompatible
set clipboard=unnamedplus					                                  " Enable File Type detection
set cursorline								                             "set visual line where cursors is 
set ignorecase 									                                     " Case insensensitive
set autoindent	                                  " copy indent from current line when starting a new line 
filetype plugin indent on
set tabstop=4                                               		" show existing tab with 4 spaces width
set shiftwidth=4                                              " when indenting with '>', use 4 spaces width
set expandtab                                                            " On pressing tab, insert 4 spaces
set relativenumber                                                                    " Set relative number
set number


let python_highlight_all = 1

" ======== NERDTree ======== 
" Toggle NERDTree's window visualization
nnoremap <C-n> :NERDTreeToggle<CR><Paste>

" Set the window's size
let g:NERDTreeWinSize = 30 

" Optimize ctrlp perfomance
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Toggle between case sensitive and insensitive
nmap <F9> :set ignorecase! ignorecase?


"Turn off search highlighting after enter untill next search
nnoremap <CR> :noh<CR><CR> 

" toggle between relative number and absolute number
nnoremap <leader>n :set relativenumber!

"Map jj as Escape in insert mode
inoremap jj <ESC> 

" Map ESC for exiting terminal mode 
:tnoremap <Esc> <C-\><C-n>

"map leader d as delete without cut.
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP
nnoremap <leader>dd "_dd
xnoremap <leader>dd "_dd

" Easier way to move between split windows 
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k

" Back to the las window
nnoremap <BS> <C-^>

" Make a new line without leaving normal mode.
nmap zj o<Esc>k
nmap zk O<Esc>j

" don't lose selection when indenting
vnoremap < <gv
vnoremap > >gv

" SET true colors so iTerm color doesn't affect it 
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
	set termguicolors
endif


set background=dark
color material 


