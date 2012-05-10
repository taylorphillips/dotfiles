call pathogen#infect()
call pathogen#helptags()

let mapleader = ";"

syntax enable
" set background=dark
set background=light
colorscheme solarized

runtime! macros/matchit.vim " Load matchit (% to bounce from do to end, etc.)

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set nocompatible      " We're running Vim, not Vi!
set encoding=utf-8
set clipboard=unnamed " Vim 7.3 supports system clipboard integration
set hidden            " Allow hidden buffers to have unsaved content


"" Window
set number            " Always with the line numbers
set guioptions-=T     " no toolbar
set mouse=a                    " Allow for mouse select
set cursorline                 " Highlight current line
set colorcolumn=80             " 80 char column line

set backspace=indent,eol,start " Let you delete

"" Whitespace
set expandtab              " use spaces not tabs
set tabstop=2 shiftwidth=2 " a tab is two spaces
set smarttab
set autoindent             " copy indent from current line when starting a new line

"" Searching
set wildmenu              " Enable tab completion menu
set wildmode=longest,list " Tab once to complete command to longest match, tab twice for list
set wildignore+=*.o,*.obj,.git,vendor/**,vagrant/**,tmp/**
set showcmd               " display incomplete commands
set incsearch             " incremental searching
set nohlsearch            " don't highlight matches
set ignorecase            " search ignores case
set smartcase             " search doesn't ignore case when one capital letter

"" Files
set autoread           " reload a file from disk
set nobackup           " delete temporary files on close

" Disable arrow keys
"    inoremap  <Up>     <NOP>
"    inoremap  <Down>   <NOP>
"    inoremap  <Left>   <NOP>
"    inoremap  <Right>  <NOP>
"    noremap   <Up>     <NOP>
"    noremap   <Down>   <NOP>
"    noremap   <Left>   <NOP>
"    noremap   <Right>  <NOP>

" kill help (I'm sure there's a bitter way to do this)
nmap <F1> <nop>
nmap <F2> <nop>

" delete whitespace
map <F5> :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

"" Command-T
let g:CommandTMaxFiles=20000 " Increase max number of files index by CommandT
let g:CommandTMaxHeight=20   " Limit CommandT's menu height to 10
augroup CommandTExtension    " Refresh command-T on write and focus
  autocmd!
  autocmd FocusGained * CommandTFlush
  autocmd BufWritePost * CommandTFlush
augroup END


" Resize panes
map <S-Up> :execute Resize('+')<CR>
map <S-Down> :execute Resize('-')<CR>
map <S-Left> :execute Resize('<')<CR>
map <S-Right> :execute Resize('>')<CR>

function! Resize(dir)
  let this = winnr()
  if '+' == a:dir || '-' == a:dir
    execute "normal \<c-w>k"
    let up = winnr()
    if up != this
      execute "normal \<c-w>j"
      let x = 'bottom'
    else
      let x = 'top'
    endif
  elseif '>' == a:dir || '<' == a:dir
    execute "normal \<c-w>h"
    let left = winnr()
    if left != this
      execute "normal \<c-w>l"
      let x = 'right'
    else
      let x = 'left'
    endif
  endif
  if ('+' == a:dir && 'bottom' == x) || ('-' == a:dir && 'top' == x)
      execute "res +5"
  elseif ('-' == a:dir && 'bottom' == x) || ('+' == a:dir && 'top' == x)
    execute "res -5"
  elseif ('<' == a:dir && 'left' == x) || ('>' == a:dir && 'right' == x)
    execute "normal 10\<c-w><"
  elseif ('>' == a:dir && 'left' == x) || ('<' == a:dir && 'right' == x)
    execute "normal 10\<c-w>>"
  else
    echo "oops. check your ~/.vimrc"
    return ""
  endif
endfunction
