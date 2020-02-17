inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "<C-p>" : "<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" <CR> confirms completion
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

""" `[g` and `]g` navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostics-prev)
nmap <silent> ]g <Plug>(coc-diagnostics-next)

""" mappings for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""" show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

""" Fix autofix problem on current line
nmap <leader>qf <Plug>(coc-fix-current)

""" Status line support
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

""" Show diagnostics
nnoremap <silent> <space>a :<C-u>CocList diagnostics<cr>
""" Manage extensions
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
""" Show commands
nnoremap <silent> <space>c :<C-u>CocList commands<cr>
""" Find symbol in document
nnoremap <silent> <space>o :<C-u>CocList outline<cr>
""" Find symbol in workspace
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

