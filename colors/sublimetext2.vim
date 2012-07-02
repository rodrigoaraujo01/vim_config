" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "sublimetext2"

hi Normal		guifg=#ffffff guibg=#272822

hi Comment	    guifg=#465457
hi Constant	    guifg=#AE81FF gui=none
hi String       guifg=#e6db74 gui=none
hi Statement    guifg=#66d9ef gui=none
hi Keyword    guifg=#F92672
hi Entity       guifg=#a6e22e gui=none
hi Support      guifg=#fd9720 gui=none
hi LineNr       guifg=#aeaeae guibg=#20211C gui=none 
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi NonText 		guifg=#808080 guibg=#272822	gui=none

hi Visual       guibg=#414446
hi VertSplit    guifg=#444444 guibg=#444444
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none


hi link Define          Entity
hi link Function        Entity

hi link Structure       Support
hi link Test            Support
hi link Special         Support

hi link StrFormat       Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant

hi link Repeat          Keyword
hi link Conditional     Keyword
hi link Operator        Keyword

hi link Float           Number

hi link StorageClass    Statement
hi link Statement       Statement
