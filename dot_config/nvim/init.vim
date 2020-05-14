call plug#begin('~/.vim/plugged')


" Normal Config Stuff
set number
set tabstop=4 shiftwidth=4 smarttab autoindent
set encoding=utf-8
set fileencoding=utf-8
set cursorline
"set mouse=a
set exrc
set secure
syntax on
set nocompatible
filetype plugin on

" Files
Plug 'scrooloose/nerdtree'
" Adds a side bar to navigate files.
Plug 'majutsushi/tagbar'
" Adds a sidebar that lists basic ctags.
"Plug 'aperezdc/vim-template'
" Auto populates files with some preset templates.


" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Plug 'vim-scripts/nginx.vim'

"GDB
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

" Spell Check
Plug 'reedes/vim-lexical'

augroup lexical
	autocmd!
	autocmd FileType markdown,mkd call lexical#init()
	autocmd FileType textile call lexical#init()
	autocmd FileType text call lexical#init()
augroup END

"Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/vim-manpager'

" Java stuff
Plug 'artur-shaik/vim-javacomplete2'

"Language packs/servers
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Provides acess to diffrent language servers

"Plug 'sheerun/vim-polyglot'
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

"let g:LanguageClient_serverCommands = {
"	\ 'cpp': ['clangd'],
"	\ 'c': ['clangd'],
"	\ }

"Plug 'dense-analysis/ale'

"Go stuff
Plug 'fatih/vim-go'

"Rust Stuff
Plug 'rust-lang/rust.vim'
Plug 'timonv/vim-cargo'
Plug 'racer-rust/vim-racer'

"Dart Stuff
"Plug 'dart-lang/dart-vim-plugin'

"Clojure Stuff
"Plug 'guns/vim-clojure-static'
"filetype plugin indent on
" Syntax and indentation for clojure
"Plug 'clojure-vim/async-clj-omni'
"

"Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'Olical/conjure', {'tag': 'v3.0.0'}

"
"Plug 'tpope/vim-fireplace'
Plug 'luochen1990/rainbow'
" Color parentheses.
"Plug 'guns/vim-sexp'
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'tpope/vim-salve'
"Plug 'gberenfield/cljfold.vim'
" clojure rainbow parens
let g:rainbow_active = 1
let g:rainbow_conf = {
      \  'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \  'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \  'separately': {
      \      '*': 0,
      \      'clojure': {},
      \  }
      \}


" (Optional) Multi-entry selection UI.
"Plug 'junegunn/fzf', { 'do': './install --bin' }
"Plug 'junegunn/fzf.vim'

"Build
Plug 'vhdirk/vim-cmake'

"Looks
Plug 'vim-airline/vim-airline'
" Cool Status bar.
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Color setup.
Plug 'editorconfig/editorconfig-vim'
" Support for Editor Config files in projects.
Plug 'ryanoasis/vim-devicons'
" Cool icons in vim.
call plug#end()


"challenger-deep
colorscheme challenger_deep
set termguicolors


" vim-airline
let g:airline_theme='darkscene'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''

" key mappings

map <F2> : NERDTreeToggle<cr>
map <F3> :TagbarToggle<CR>

nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>

