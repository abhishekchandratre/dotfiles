let g:vimwiki_list = [
			\ {'path': '~/Dropbox/vimwiki/tech',
			\ 'path_html': '~/Desktop/vimwikihtml',
			\ 'syntax': 'markdown',
			\ 'ext': '.md',
			\ 'custom_wiki2html': '~/.dotfiles/vim/wiki2html.sh', },
			\
			\ {'path': '~/Dropbox/vimwiki/life/',
			\ 'path_html': '~/Desktop/vimwikihtml',
			\ 'syntax': 'markdown',
			\ 'ext': '.md',
			\ 'custom_wiki2html': '~/.dotfiles/vim/wiki2html.sh', }]

" function! SetMarkdownOptions()
" 	call VimwikiSet('syntax', 'markdown')
" 	call VimwikiSet('custom_wiki2html', 'wiki2html.sh')
" endfunction

" autocmd FileType vimwiki call SetMarkdownOptions()


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
