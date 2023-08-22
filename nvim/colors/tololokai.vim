" TOLOLOKAI
" a Molokai color scheme for Neovim with a black background
set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "tololokai"

hi Normal      guifg=#F8F8F2 guibg=#000000
hi Cursor      guifg=#000000 guibg=#F8F8F2
hi LineNr      guifg=#75715E
hi Comment     guifg=#75715E
hi Constant    guifg=#AE81FF
hi String      guifg=#E6DB74
hi Identifier  guifg=#A6E22E
hi Function    guifg=#66D9EF
hi Type        guifg=#66D9EF
hi Statement   guifg=#F92672
hi PreProc     guifg=#A6E22E
hi Special     guifg=#FD971F
hi Error       guifg=#F8F8F2 guibg=#F92672
hi Todo        guifg=#FD971F guibg=#000000
hi Visual      guibg=#3E3D32
hi Search      guibg=#3E3D32 guifg=#A6E22E
hi VertSplit   guifg=#75715E

" Left columns / status lines
hi StatusLine  guifg=#F8F8F2 guibg=#49483E
hi StatusLineNC guifg=#75715E guibg=#000000
hi SignColumn  guibg=#000000
hi FoldColumn  guibg=#000000

" Modeline
hi StatusLine  guifg=#FD971F guibg=#272822 gui=bold
hi StatusLineNC guifg=#75715E guibg=#272822

" Contextual menues
hi Pmenu       guifg=#F8F8F2 guibg=#49483E
hi PmenuSel    guifg=#000000 guibg=#FD971F
hi PmenuSbar   guibg=#75715E
hi PmenuThumb  guibg=#FD971F
