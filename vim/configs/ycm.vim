" turn on completion in comments
let g:ycm_complete_in_comments=1
" load ycm conf by default
let g:ycm_confirm_extra_conf=0
" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
" only show completion as a list instead of a sub-window
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
" don't cache completion items
let g:ycm_cache_omnifunc=0
" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
" binary path
let g:ycm_python_binary_path = '/usr/local/bin/python3'
" leader g for going to the definitions
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
