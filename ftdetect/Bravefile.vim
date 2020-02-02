" vint: -ProhibitAutocmdWithNoGroup

" Bravefile
autocmd BufRead,BufNewFile [Bb]ravefile set ft=Bravefile
autocmd BufRead,BufNewFile Bravefile* set ft=Bravefile
autocmd BufRead,BufNewFile [Bb]ravefile.vim set ft=vim
autocmd BufRead,BufNewFile *.brave set ft=Bravefile
autocmd BufRead,BufNewFile *.[Bb]ravefile set ft=Bravefile
