augroup projectlocal "{
	autocmd!
	autocmd BufNewFile,BufReadPost * call projectlocal#WalkTree()
augroup END " }
