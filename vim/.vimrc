set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"

"Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leshill/vim-json'

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0



" NerdTree
Plugin 'scrooloose/nerdtree'

" YouCompleteMe
Plugin 'valloric/youcompleteme'

" vim-commentary
Plugin 'tpope/vim-commentary'

" light-line
Plugin 'itchyny/lightline.vim'

" indentLine
" Plugin 'Yggdroot/indentLine'

" indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" colorizer
Plugin 'lilydjwg/colorizer'

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
"


" Enable Mouse
:set mouse=a

" Set indent
set shiftwidth=2

" Toggle line number
:nmap <C-l> :set invnumber<CR>

" lightline stuff
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" indentLine stuff
" let g:indentLine_enabled = 0
" :nmap <C-i> :IndentLinesToggle<CR>
" let g:indentLine_char = '┆'

" indent-guides stuff
:nmap <C-i> :IndentGuidesToggle<CR>
let g:indent_guides_enable_on_vim_startup = 0
" colors
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=8

" AUTOCOMPLETION
filetype plugin on
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" NerdTree
map <C-t> :NERDTreeToggle<CR>


"delete remap
nnoremap x "_d
xnoremap x "_d
