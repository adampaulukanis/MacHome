set nocompatible
filetype off
" odpal mi ten cały Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'


" kończ te całe Vundle
call vundle#end()
"
" System vimrc file for Mac OS X
" Author:  Benji Fisher <benji@member.AMS.org>
" Last modified:  23 February 2004

" TODO:  Is there any way to test whether Vim.app was started from the Finder? 
if has("gui_running")
  " Get the value of $PATH from a login shell.
  " If your shell is not on this list, it may be just because we have not
  " tested it.  Try adding it to the list and see if it works.  If so,
  " please post a note to the vim-mac list!
  if $SHELL =~ '/\(sh\|csh\|bash\|tcsh\|zsh\)$'
    let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
    let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')
  endif
  " Change directory on startup.
  autocmd VimEnter * if getcwd()=="/" | if strlen(@%) | cd %:p:h | else | cd | endif | endif
" If running in a Terminal window, set the terminal type to allow syntax
" highlighting.
" else
"   set term=ansi
endif

syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set ruler

" moje własne reguły
set cursorline
set cursorcolumn
set number
set spell
set spelllang=en,pl
set colorcolumn=81,121
"execute "set colorcolumn=" . join(range(81,335), ',')
"if &t_Co >= 256 && &bg == "dark"
"  highlight ColorColumn ctermbg=233
"elseif &t_Co >= 256 && &bg != "dark"
"  highlight ColorColumn ctermbg=230
"else
"  highlight ColorColumn ctermbg=8
"endif

set tw=79       " width of document (used by gd)
set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
