augroup projectlocal "{
	autocmd!
	autocmd BufNewFile,BufReadPost * nested call projectlocal#WalkTree()
augroup END " }
