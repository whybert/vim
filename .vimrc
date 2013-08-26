set nu
set ts=4
set sw=4
set expandtab
let g:molokai_original=1
:filetype indent on 

autocmd BufNewFile *.cpp 0r ~/.vim/template/header.cpp

"F5: complie and run"
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python %"
    endif
endfunc

