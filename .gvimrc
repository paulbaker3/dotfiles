" Use the excellent Railscat theme by Jeff Kreeftmeijer (gVim-only)
colorscheme railscat
" Use 14pt Menlo
set guifont=Menlo:h14
" Better line-height
set linespace=8


" Mapping CtrlP to command+p... like a boss
if has("gui_macvim")
  macm File.Print key=<nop>
  map <D-p> :CtrlP<CR>
  map <D-Right> <D-}> 
  map <D-Left> <D-{>
endif