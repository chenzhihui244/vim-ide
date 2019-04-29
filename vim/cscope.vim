
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csqf=s-,c-,d-,i-,t-,e-
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
  endif
  set csverb
endif

" 0 or s: Find this C symbol
nmap <Leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
" 1 or g: Find this definition
nmap <Leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
" 2 or d: Find functions called by this function
nmap <Leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
" 3 or c: Find functions calling this function
nmap <Leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
" 4 or t: Find this text string
nmap <Leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
" 6 or e: Find this egrep pattern
nmap <Leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
" 7 or f: Find this file
"nmap <Leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
" 8 or i: Find files #including this file
nmap <Leader>fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

map <F12> :call Do_CsTag()<CR>
nmap <Leader>css :cs find s <C-R>=expand("<cword>")<CR><CR>:bo cw<CR>
nmap <Leader>csg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>csc :cs find c <C-R>=expand("<cword>")<CR><CR>:bo cw<CR>
nmap <Leader>cst :cs find t <C-R>=expand("<cword>")<CR><CR>:cw<CR>
"nmap <Leader>cst :cs find t <C-R>=expand("<cword>")<CR><CR>:bo cw<CR>
nmap <Leader>cse :cs find e <C-R>=expand("<cword>")<CR><CR>:bo cw<CR>
nmap <Leader>csf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <Leader>csi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:bo cw<CR>
nmap <Leader>csd :cs find d <C-R>=expand("<cword>")<CR><CR>:bo cw<CR>

if (has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

function! Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill 0
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R ¨Cc-types=+p ¨Cfields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
        "silent! execute "!ctags -R "Cc++-kinds=+p "Cfields=+iaS "Cextra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction

