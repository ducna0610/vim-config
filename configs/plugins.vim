call plug#begin('~/.config/nvim/bundle')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim' 
Plug 'jiangmiao/auto-pairs'

call plug#end()

"Theme 
syntax on
colorscheme gruvbox

"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

"Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1

"Coc 
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"