" =============================================================================
"                              Keyboard Shortcuts
" =============================================================================
" Search for [<letter>] to see what's mapped under <leader><letter>.
" e.g. /[s will take you to the settings navigation section.

" Faster scrolling
  nnoremap <C-e>                2<C-E>
  nnoremap <C-y>                2<C-Y>

" Make spacebar the leader key
  let mapleader=" "
  nnoremap <Space>              <Nop>

" Case-insensitive search
  nnoremap <leader>/            /\c<Left><Left>

" Make `cgn` operate on the currently selected word
" https://vi.stackexchange.com/a/18895
  nnoremap <silent>cgn          :<C-u>let @/=expand('<cword>')<cr>cgn

" Capitalize last word while inserting text
" inoremap <C-j>                <Esc>gUiwea

" [v]imscript execution
" -----------------------------------------------------------------------
" Execute the whole line under cursor in normal mode
" nnoremap <silent><leader>ve   yy:@"<CR>0
" Execute visual selection
" vnoremap <silent><leader>ve   y:@"<CR>

" [s]ettings navigation
" -----------------------------------------------------------------------
 nnoremap <silent><leader>si   :<C-u>e $MYVIMRC<CR>
 nnoremap <silent><leader>sk   :<C-u>e ~/.config/nvim/after/plugin/keymap.vim<CR>
" nnoremap <silent><leader>sap  :<C-u>e ~/.config/nvim/after/plugin<CR>
" nnoremap <silent><leader>saf  :<C-u>e ~/.config/nvim/after/ftplugin<CR>

" [t]ree view of the CWD or current file's directory
" -----------------------------------------------------------------------
" nnoremap <silent><leader>t    :<C-u>30Lexplore<CR>
" nnoremap <silent><leader>T    :<C-u>30Lexplore %:p:h<CR>

" Markdown and RST headers [1] [2] [3] [4]
" -----------------------------------------------------------------------
" nnoremap <leader>1            yypVr=
" nnoremap <leader>2            yypVr-
" nnoremap <leader>3            yypVr+
" nnoremap <leader>4            yypVr*
" onoremap ih                   :<C-U>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<CR>

" Tab movement [h] [l]
" -----------------------------------------------------------------------
" nnoremap <silent><leader>h    :<C-u>tabp<CR>
" nnoremap <silent><leader>l    :<C-u>tabn<CR>

" [c]lipboard [c]ommands
" -----------------------------------------------------------------------
" nnoremap <leader>cv           "+p
" vnoremap <leader>cv           "+p
" vnoremap <leader>cc           "+y

" dan-vim stuff
" -----------------------------------------------------------------------
inoremap jk                 <Esc>
nnoremap <CR> :nohlsearch<CR><CR>_

" [f]ind things
" -----------------------------------------------------------------------
 nnoremap se                 :Files<CR>
 nnoremap so                 :Buffers<CR>
 nnoremap <leader>fg         :GitFiles<CR>
 nnoremap <leader>ft         :Tags<CR>
 nnoremap <leader>fr         :Rg<CR>
 nnoremap <leader>fa         :<C-u>e ~/.aws/credentials<CR>
