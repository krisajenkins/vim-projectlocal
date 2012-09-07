if exists("g:loaded_projectlocal") || &cp
  finish
endif
let g:loaded_projectlocal = 1

if !exists("g:projectlocal_project_markers")
	let g:projectlocal_project_markers = ['.git', '.hg', '.svn']
endif

function! s:WalkTreeInternal(dir) " {
	let l:is_project_dir = 0

	" We should stop if this directory contains a marker.
	for l:marker in g:projectlocal_project_markers
		if ! empty(globpath(a:dir, l:marker))
			let l:is_project_dir = 1
		endif
	endfo

	if empty(a:dir) || l:is_project_dir
		" Finished walking.
	else
		" Look at the parent dir.
		let l:parent_dir = fnamemodify(a:dir, ":p:h:h")
		call s:WalkTreeInternal( l:parent_dir )
	endif

	" Post-walk evaluation.
	let l:vimrc = globpath(a:dir, '.vimrc')
	if filereadable(l:vimrc)
		execute 'source ' . l:vimrc
	endif
endfunction " }

function! projectlocal#WalkTree() " {
	call s:WalkTreeInternal(expand("%:p:h"))
endfunction " }
