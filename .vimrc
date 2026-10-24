"
" Russells hand made vimrc file
" 
:set number relativenumber
:set nu rnu

:set ruler

" TABS n stuff
:set ts=4
:set sw=4

" Autoindent
:set autoindent
set smartindent
set smarttab
set expandtab
set number

" Autocompletion
inoremap " ""<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap ''' '''  '''<left><left><left><left>

" Enable Omnicomplete features
set omnifunc=syntaxcomplete#Complete
set omnifunc=pythonscriptcomplete#CompletePython
