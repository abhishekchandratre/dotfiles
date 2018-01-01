let g:lightline = {
	\ 'colorscheme': 'Tomorrow',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste'  ],
	\             [ 'gitbranch', 'readonly', 'filename', 'modified'  ] ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'fugitive#head'
	\ },
	\ }
