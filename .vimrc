" Install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" 	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Side-bar file tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

"""" Settings

" Start NERDTree and move cursor to file window
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

" Automatically close NERDTree if it is the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Highlight all search matches
set hlsearch
hi Search ctermbg=Yellow
hi Search ctermfg=Black


" Tab Character Settings
"
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"""" Key mappings

" Ctrl-n opens a new tab with file explorer
nnoremap <C-n> :tabedit \| Explore<CR>
