" do not forget to install silversearch-ag
""setup plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins to be installed
call plug#begin('~/.vim/plugged')
Plug 'sickill/vim-monokai'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'cakebaker/scss-syntax.vim'
Plug 'storyn26383/vim-vue'
Plug 'townk/vim-autoclose'
Plug 'dense-analysis/ale'
Plug 'isruslan/vim-es6'
call plug#end()

" toggle nerdTree
map <C-n> :NERDTreeToggle<CR>
" shortcut to FZF
map <C-f> :FZF<CR>

" not listing ignorable files
let NERDTreeIgnore=['^node_modules$', '*.pyc', '^_templates$', '^__pycache__$']

syntax enable
" Color scheme
colorscheme monokai

" identation
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" display numbers on left
set number
set relativenumber

"window splitting
set splitbelow
set splitright

" autoclose tags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.html.erb,*.xml,*.vue'

" mark 80th column
set colorcolumn=80
