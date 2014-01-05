
syntax on
set number
color slate


set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent

set textwidth=80


set backspace=indent,eol,start
set clipboard=unnamedplus
set mouse=a
set laststatus=2


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

if exists('+colorcolumn')
    set colorcolumn=80
    highlight ColorColumn ctermbg=235 guibg=#303030
endif


if has("gui_running")
    :hi CursorLine  cterm=NONE ctermbg=darkred ctermfg=white guibg=#363636 guifg=white
    augroup CursorLine
        au!
        au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        au WinLeave * setlocal nocursorline
    augroup END

    set guifont=Monospace\ 12
    set guioptions-=T

endif



" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V> "+gP
map <S-Insert> "+gP

cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert> <C-V>
vmap <S-Insert> <C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q> <C-V>


