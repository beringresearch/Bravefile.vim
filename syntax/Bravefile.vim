" Vim syntax file
" Language: Bravefile
" Maintainer: Bering Limited
" Latest Revision: 2 February 2020
" Source: https://beringresearch.com

if exists("b:current_syntax")
  finish
endif


syn keyword bravefileKeywords base image packages run service dist name location tar postdeploy
syn keyword bravefileKeywords base image packages run service dist name location tar docker
syn keyword bravefileKeywords manager system command args content ip resource ram cpu gpu version resources
syn keyword bravefileKeywords copy source target action ports docker

" Bash statements
setlocal iskeyword+=-
syn keyword bashStatement alias add-apt-repository adduser apk apt apt-get aptitude apt-key autoconf bundle
syn keyword bashStatement cd chgrp chmod chown clear complete composer cp curl du echo egrep
syn keyword bashStatement expr fgrep find gem git gnufind gnugrep gpg grep groupadd head less ln
syn keyword bashStatement ls make monit mkdir mv node npm pacman pip pip3 php python python3 R rails rm rmdir rpm ruby
syn keyword bashStatement sed sleep sort strip tail tailf touch useradd virtualenv yum
syn keyword bashStatement usermod bash cat a2ensite a2dissite a2enmod a2dismod apache2ctl
syn keyword bashStatement wget gzip zip unzip export sh ash 

" Strings
syn region bravefileString start=/"/ skip=/\\"|\\\\/ end=/"/
syn region bravefileString1 start=/'/ skip=/\\'|\\\\/ end=/'/
syn region bravefileString2 start=/`/ skip=/\\`|\\\\/ end=/`/

" Emails
syn region bravefileEmail start=/</ end=/>/ contains=@ oneline

" Urls
syn match bravefileUrl /\(http\|https\|ssh\|hg\|git\)\:\/\/[a-zA-Z0-9\/\-\._]\+/
syn match bravefileComment "\v//.*$"

" Highlighting
hi link bravefileComment   Comment
hi link bravefileKeywords  Keyword
hi link bravefileString    String
hi link bravefileString1   String
hi link bravefileString2   String
hi link bravefileEmail     Identifier
hi link bravefileUrl       Identifier
hi link bashStatement      Function

let b:current_syntax = "bravefile"
