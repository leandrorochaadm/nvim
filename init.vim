call plug#begin('~/.config/nvim/autoload')
"Flutter
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'natebosch/vim-lsc-dart'
    "Plug 'reisub0/hot-reload.vim'
    Plug 'thosakwe/vim-flutter'

	" Themes
    Plug 'https://github.com/danilo-augusto/vim-afterglow'
"	Plug 'mhinz/vim-janah'

	" Navigation
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/nerdcommenter'

	" Autocomplete and code writing help
	Plug 'natebosch/vim-lsc'
	Plug 'ervandew/supertab'
"	Plug 'shougo/neocomplete.vim'

	"Plug 'tpope/vim-surround'
	"Plug 'terryma/vim-multiple-cursors'
"	Plug 'jiangmiao/auto-pairs'
	" Config stuff
	
"	Plug 'editorconfig/editorconfig-vim'
	
	" File finding and project navigation
"	Plug '/usr/local/opt/fzf'
"	Plug 'junegunn/fzf.vim'
	Plug 'scrooloose/nerdtree'
	
	" Git integrations
	Plug 'tpope/vim-fugitive'

    "snippet
    Plug 'sirver/ultisnips'

    call plug#end()

syntax enable
colorscheme afterglow
"set autodir
set number
set relativenumber
set background=dark

let g:lsc_auto_map = v:true
let g:lsc_server_commands = {'dart': 'dart_language_server'}

"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:SuperTabDefaultCompletionType="<c-n>"
let g:SuperTabContextDefaultCompletionType="<c-n>"

let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/ultisnips"
set dictionary+=~/.config/nvim/dictionary/flutter.txt
set complete=.,w,k

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Enable Flutter menu
"call FlutterMenu()

" Some of these key choices were arbitrary;
" it's just an example.
"nnoremap <leader>fa :FlutterRun<cr>
"nnoremap <leader>fq :FlutterQuit<cr>
"nnoremap <leader>fr :FlutterHotReload<cr>
"nnoremap <leader>fR :FlutterHotRestart<cr>
"nnoremap <leader>fD :FlutterVisualDebug<cr>

" TABs
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" NERDTree

" F3 to toggle NERDTree
map <F3> :NERDTreeToggle<CR>
map <F2> :DartFmt<CR>
nnoremap <C-s> :w! <cr>
nnoremap <C-q> :q! <cr>
nnoremap <C-A-s> :wq! <cr>
nnoremap <C-f> :/\c <cr>

" Ignore files on NERDTree
    let NERDTreeIgnore = [
        \'\.git[[dir]]',
        \'\.sass-cache[[dir]]',
        \'node_modules[[dir]]',
        \'bower_components[[dir]]',
        \'\.pyc$',
        \'\.pyo$',
        \'\.idea$',
        \'\.vscode$',
        \'\.tags$'
    \]
    " Show hidden files
    let NERDTreeShowHidden=1
    

" Open NERDTree automatically when vim starts up on opening a directory
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

    " Close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD Commenter

    " Make sure that you have filetype plugins enabled
    filetype plugin on
    
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1

    " GENERAL COMMANDS
"
" @see http://stackoverflow.com/questions/2001190/adding-a-command-to-vim	
"

" save as sudo
ca w!! w !sudo tee "%"

" remove hidden characters '^M' from Windows® docs
"command AdjustEndOfLine execute '%s/\r\(\n\)/\1/g' 

" Tabs to spaces
"command Tabs2Spaces execute ':1,$s/\t/  /g'

" 2 spaces to 4 spaces
"command TwoSpaces2FourSpaces execute ':%s/^\s*/&&/g'
