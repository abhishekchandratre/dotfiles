let g:vimwiki_list = [
			\ {'path': '~/Desktop/vimwiki/tech',
			\ 'path_html': '~/Desktop/vimwikihtml',
			\ 'syntax': 'markdown',
			\ 'ext': '.md',
			\ 'custom_wiki2html': '~/.dotfiles/vim/wiki2html.sh', },
			\
			\ {'path': '~/Desktop/vimwiki/life/',
			\ 'path_html': '~/Desktop/vimwikihtml',
			\ 'syntax': 'markdown',
			\ 'ext': '.md',
			\ 'custom_wiki2html': '~/.dotfiles/vim/wiki2html.sh', }]

autocmd FileType vimwiki call SetMarkdownOptions()

function! SetMarkdownOptions()
	call VimwikiSet('syntax', 'markdown')
	call VimwikiSet('custom_wiki2html', 'wiki2html.sh')
endfunction

nnoremap <leader>w_ :VimwikiSplitLink<CR>
nnoremap <leader>w\| :VimwikiSplitLink<CR>

let g:vimwiki_auto_chdir = 1
" This disables table mappings but allows tab completions
let g:vimwiki_table_mappings = 0
" To disable on over link changes, you'd able to view link only in insert mode
" set concealcursor=nc

let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'/path/to/vwtags.py'
          \ , 'ctagsargs': 'markdown'
          \ }