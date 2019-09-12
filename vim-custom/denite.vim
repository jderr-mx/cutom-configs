call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
    \ ['git', 'ls-files'])

" Disable highlighting when searching files
call denite#custom#option('_', 'highlight_mode_insert', 'CursorLine')
call denite#custom#option('_', 'highlight_matched_range', 'None')
call denite#custom#option('_', 'highlight_matched_char', 'None')

nnoremap <Leader>b :Denite -mode=normal buffer -sorters=sorter_word<CR>
noremap <Leader>ff :Denite -mode=insert file/rec/git<CR>
nnoremap <Leader>gc :Denite -mode=normal gitchanged<CR>
nnoremap <Leader>gl :Denite -mode=normal gitlog<CR>
nnoremap <Leader>gs :Denite -mode=normal gitstatus<CR>


"inoremap 9<Tab> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
"nnoremap 9<Tab> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
let g:UltiSnipsExpandTrigger="9<tab>"

