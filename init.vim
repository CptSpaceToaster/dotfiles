call plug#begin()
Plug 'tpope/vim-sleuth'
Plug 'benekastah/neomake'
Plug 'powerline/fonts', { 'do': './install.sh' } | Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Airline configuration
let g:airline_powerline_fonts=1         " Let airline know that fonts are cool
let g:airline_exclude_preview=1         " Don't show status line in preview

" Neomake configuration
let g:neomake_python_enabled_makers = [ 'flake8' ]

" Change tab defaults
set tabstop=4                           " Look to stop tabs every 4 spaces
set shiftwidth=4                        " Indents still have width of 4
set expandtab                           " Tab->spaces

set clipboard+=unnamedplus              " Yank into the x-clipboard

set number                              " Line numbers pls

let g:solarized_termcolors=256          " Let the color scheme know we support 256 color
let g:solarized_termtrans=1             " transparent backgrounds are neat
set background=dark                     " snarl! hiss!
:silent! colorscheme solarized          " kick off this wild show
