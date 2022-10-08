let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Setting Vim to have hybrid line numbers
set number
set relativenumber


" Enable and use vim plug
call plug#begin('~/.vim/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'joshdick/onedark.vim'

" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki" 
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'


call plug#end()

syntax on
colorscheme onedark
