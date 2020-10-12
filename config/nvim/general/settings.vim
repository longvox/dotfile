set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

if !exists('g:vscode')
  syntax enable                           " Enables syntax highlighing
  set hidden                              " Required to keep multiple buffers open multiple buffers
  set nowrap                              " Display long lines as just one line
  set noswapfile
  set encoding=utf-8                      " The encoding displayed
  set pumheight=10                        " Makes popup menu smaller
  set fileencoding=utf-8                  " The encoding written to file
  set ruler              			            " Show the cursor position all the time
  set cmdheight=1                         " More space for displaying messages
  set mouse=a                             " Enable your mouse
  set splitbelow                          " Horizontal splits will automatically be below
  set splitright                          " Vertical splits will automatically be to the right
  set t_Co=256                            " Support 256 colors
  set conceallevel=0                      " So that I can see `` in markdown files
  set tabstop=2                           " Insert 2 spaces for a tab
  set shiftwidth=2                        " Change the number of space characters inserted for indentation
  set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab                           " Converts tabs to spaces
  set smartindent                         " Makes indenting smart
  set autoindent                          " Good auto indent
  set laststatus=2                        " Always display the status line
  set number                              " Line numbers
  set cursorline                          " Enable highlighting of the current line
  set background=dark                     " tell vim what the background color looks like
  set showtabline=2                       " Always show tabs
  set noshowmode                          " We don't need to see things like -- INSERT -- anymore
  set nobackup                            " This is recommended by coc
  set nowritebackup                       " This is recommended by coc
  set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
  set history=50                          " Keep 50 lines of command line history
  set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
  set updatetime=300                      " Faster completion
  set timeoutlen=100                      " By default timeoutlen is 1000 ms
  set clipboard=unnamedplus               " Copy paste between vim and everything else
  set hlsearch                            " Enable Highlight Search
  set incsearch                           " Highlight while search
  set ignorecase                          " Case Insensitivity Pattern Matching
  set smartcase                            " Overrides ignorecase if pattern contains upcase
  set grepprg=ack\ --nogroup\ --column\ $* " Make grep use ack instead
  set grepformat=%f:%l:%c:%m
  set guifont=Hack\ Nerd\ Font
  set relativenumber
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set mmp=1300
  set autochdir                           " Your working directory will always be the same as your working directory
  set nospell
  set fileformats=unix,mac,dos
  " don't create backups for these paths
  set backupskip+=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
  " Make Vim able to edit crontab files again.
  set backupskip+=/private/tmp/*"
  set backupskip+=~/.secret/*

  set foldcolumn=2                        " Folding abilities
  set wrap linebreak                      " wrap by window
  au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
  set foldmethod=manual

  au BufWinLeave * silent! mkview
  au BufWinEnter * silent! loadview

  " show rule
  call matchadd("WarningMsg", "\\%>80v.\\+")
  call matchadd("ErrorMsg", "\\%>120v.\\+")

  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  autocmd BufWritePre * %s/\s\+$//e

  " no beeps or flashes
  set novisualbell
  set noerrorbells

  " Binary
  set wildignore+=*.aux,*.out,*.toc
  set wildignore+=*.o,*.obj,*.exe,*.dll,*.jar,*.pyc,*.rbc,*.class
  set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
  set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
  set wildignore+=*.eot,*.otf,*.ttf,*.woff
  set wildignore+=*.doc,*.pdf
  set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
  " Cache
  set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*.gem
  set wildignore+=.sass-cache
  set wildignore+=npm-debug.log
  " Compiled
  set wildignore+=*.marko.js
  set wildignore+=*.min.*,*-min.*
  " Temp/System
  set wildignore+=*.*~,*~
  set wildignore+=*.swp,.lock,.DS_Store,._*,tags.lock
endif
