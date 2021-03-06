" Vim compiler file
" Compiler:         Matlab mlint code checker
" Maintainer:       Sameer Shirdhonkar <ssameer@umiacs.umd.edu>
" Latest Revision:  2007-01-26
" Comment:          mlint messages are either instructional (type 1), 
"                   performance warning (type 2), or errors (type 3).


if exists("current_compiler")
  finish
endif
let current_compiler = "mlint"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" Can only use start column if range of columns is output
CompilerSet errorformat=L\ %l\ (C\ %c)\ %t:%*[a-zA-Z0-9]\ :\ %m,L\ %l\ (C\ %c-%*[0-9])\ %t:%*[a-zA-Z0-9]\ :\ %m
CompilerSet makeprg=mlint\ -id\ $*\ %
