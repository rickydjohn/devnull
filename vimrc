" My SET statements                                                                                                                                                          
set tags+=~/Projects/tags                                                                                                                                                    
set relativenumber                                                                                                                                                           
set nu                                                                                                                                                                       
set path+=**                                                                                                                                                                 
set spell                                                                                                                                                                    
set shiftwidth=2                                                                                                                                                             
set tabstop=2                                                                                                                                                                
set nowrap                                                                                                                                                                   
                                                                                                                                                                             
"set nocompatible              " be iMproved, required                                                                                                                       
                                                                                                                                                                             
filetype plugin on                  " required                                                                                                                               
command! MakeTags !ctags -R ~/Projects/tags                                                                                                                                  
syntax on                                                                                                                                                                    
let mapleader = "g"                                                                                                                                                          
                                                                                                                                                                             
nnoremap tn :tabnew<CR>                                                                                                                                                      
nnoremap tc :tabclose<CR>                                                                                                                                                    
nnoremap tN :tabNext<CR>                                                                                                                                                     
nnoremap tP :tabPrevious<CR>                                                                                                                                                 
                                                                                                                                                                             
" set the runtime path to include Vundle and initialize                                                                                                                      
set rtp+=~/.vim/bundle/Vundle.vim                                                                                                                                            
call vundle#begin()                                                                                                                                                          
" alternatively, pass a path where Vundle should install plugins                                                                                                             
"call vundle#begin('~/some/path/here')                                                                                                                                       
                                                                                                                                                                             
" let Vundle manage Vundle, required                                                                                                                                         
Plugin 'VundleVim/Vundle.vim'                                                                                                                                                
                                                                                                                                                                             
" The following are examples of different formats supported.                                                                                                                 
" Keep Plugin commands between vundle#begin/end.                                                                                                                             
" plugin on GitHub repo                                                                                                                                                      
Plugin 'tpope/vim-fugitive'                                                                                                                                                  
" plugin from http://vim-scripts.org/vim/scripts.html                                                                                                                        
" Plugin 'L9'                                                                                                                                                                
" Git plugin not hosted on GitHub                                                                                                                                            
Plugin 'git://git.wincent.com/command-t.git'                                                                                                                                 
" git repos on your local machine (i.e. when working on your own plugin)                                                                                                     
" The sparkup vim script is in a subdirectory of this repo called vim.                        
" Pass the path to set the runtimepath properly.                                                                                                                      [20/68]
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

"GOLANG SPECIFIC COMMENTS ARE HERE "
Plugin 'fatih/vim-go'
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_addtags_transform = "camelcase"
au filetype go inoremap <buffer> . .<C-x><C-o>
"GOLANG SPECIFIC COMMENTS ENDS HERE "



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


nnoremap no :NERDTreeToggle<CR>


" VIM NOTES by RICKY
"NIFTY KEYSTROKES:
"       - shift } to move to the end of a paragraph
"       - shift { to move to the top of a paragraph
"       - Visual Select an area you want to replace and press 'r' and the character you want to change to.
"       - capital 'V' selects an entire line in visual mode
"
" MULTIPLE FILE TRAVERSE:
"       - g^] will give you the list of files with matching letters while ^] will take to immediate file with the match.
"       - ^T will help you take you back file by file back to the original file where you started traversing.
" AUTOCOMPLETE:
"       - ^x^n for just the file you are searching.
"       - ^x^f for filenames because path is set above to look recursively
"       - ^x^] for searching tags only
"       - ^n for anything specified by complete option & ^p to traverse through
"       --- help ins-recursively for more
"SPELLING:
"       - set spell will enable spell check. '[s' will take you to a spell error before your cursor and ']s' will take you to an error after the cursor.
"       - 'z=' will show all the available spelling suggestions. '1z=' will automatically pick the first option from the list shown in 'z='
"REGISTER:
"       - To dump data from a register(generally after recording), go to insert mode and type ^rq
"GOTOFILE:
"       - gf (goto file) takes you to an file referred in the macro. ctrl-o brings you back to the original file.
"       help gf for more details
