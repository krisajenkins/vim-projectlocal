" In theory, this file should go in autoload/. The problem with that is it
" will be put at the end of the autocmd queue, so any autocmds you add will be
" trigged too late to benefit from things like FileType detection.
"
" Starting vim as 'vim -V9 vim.log somefile.txt' tells me that, by putting the
" file here, it will get into the autocmd chain as early as possible.
autocmd BufNewFile,BufReadPost * nested call projectlocal#WalkTree()
