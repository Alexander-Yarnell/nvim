
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'dense-analysis/ale' 
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'Yggdroot/indentLine'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
    Plug 'mattn/emmet-vim'
    Plug 'jremmen/vim-ripgrep'
    Plug 'dracula/vim'
    Plug 'kien/ctrlp.vim'
    Plug 'mbbill/undotree'
    Plug 'codota/tabnine-vim'
     Plug 'itchyny/lightline.vim'
call plug#end()
