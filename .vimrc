set nocompatible              " be iMproved, required
filetype off                  " required

" set utf8 encoding
set encoding=utf8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pearofducks/ansible-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'edkolev/tmuxline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Set statusline
"set statusline=on

" Toogle line numbers
:nmap <C-N><C-N> :set invnumber<CR>

" Enable mouse
set mouse=a
syntax enable

" Setup color"
set background=light
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
colorscheme solarized

" For ansible
let g:ansible_unindent_after_newline = 1

" enable filetype detection
filetype on

" show title and ruler
set title
set ruler

" lines longer 80 columns will be broker
set textwidth=80

" Use system clipboard
set clipboard=unnamed

" Syntastic setup
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yaml = ['ansible_lint']

" NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Netrw settings
":map <C-n> :Vexplore<CR>
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

" Vim-Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enable = 1

"vim-tagbar
"let g:tagbar_width = 30

"vim-gitgutter
let g:gitgutter_highlight_lines = 0
let g:gitgutter_realtime = 1
let g:tagbar_autoclose = 1

"ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 1

"vim-tmuxline
"let g:tmuxline_preset = 'full'
"let g:tmuxline_powerline_separators = 0
