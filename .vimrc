filetype plugin indent on 
set nocompatible 
set encoding=utf8
set relativenumber " Относительные номера строк
set expandtab " Пробелы вместо табов
set smarttab " То же?
set tabstop=4 " Количество пробелов в табе
set softtabstop=4 " Количество пробелов в табе
set shiftwidth=4 " То же?
set hlsearch " Подсветка всех найденных подстрок
set wrap linebreak nolist " Перенос по словам
set scrolloff=5 " Между курсором и концом окна всегда 5 строк
set ignorecase
set smartcase " Искать без учета регистра, но если введён прописной символ, то регистрозависимо
if has('unnamedplus')
    set clipboard=unnamedplus " Системный буфер обмена
endif
set updatetime=100
set signcolumn=number
set autoread " Обновление, если файл был изменён извне
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime
set ttimeoutlen=10
let &t_SI.="\e[5 q"
let &t_SR.="\e[3 q" " Разные символы для разных режимов
let &t_EI.="\e[1 q"
syntax enable

call plug#begin('/home/vad/.vim/bundle') 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
 
Plug 'neovimhaskell/haskell-vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dominikduda/vim_current_word'
call plug#end() 

let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline_section_z = "Ln:%l/%L Col:%c"
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

hi CocFloating ctermbg=Black
hi CocMenuSel ctermbg=DarkGrey
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

let g:coc_global_extensions = ['coc-css', 'coc-clangd', 'coc-html', 'coc-json', 'coc-lightbulb', 'coc-sh']
