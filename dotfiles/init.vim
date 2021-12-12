call plug#begin('~/.vim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig' " neovim native language server support
Plug 'tami5/lspsaga.nvim' " provide code action
Plug 'williamboman/nvim-lsp-installer' " language server installer
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim' " finder
Plug 'kyazdani42/nvim-tree.lua' " file explorer
Plug 'onsails/lspkind-nvim' " display the fancy icons to completion-menu
Plug 'lukas-reineke/indent-blankline.nvim' " indentation guides
Plug 'tpope/vim-dadbod' " interact with databases
Plug 'kristijanhusak/vim-dadbod-ui' " an UI for vim-dadbod
Plug 'vim-test/vim-test' " A Vim wrapper for running tests on different granularities
Plug 'tpope/vim-dispatch' " kicks off tests asynchronously
Plug 'mfussenegger/nvim-jdtls' " tools for java development
Plug 'fatih/gomodifytags' " add/remove tags for go's structs"
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown-preview
Plug 'NTBBloodbath/rest.nvim' " working with REST
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' } " colorize colornames and hexcode
Plug 'b0o/SchemaStore.nvim' " providing access to the SchemaStore catalog
Plug 'tpope/vim-dotenv' " support for .env
" begin snippets
Plug 'hrsh7th/vim-vsnip' " vscode's snippet feature in vim.
Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'rafamadriz/friendly-snippets' " preconfigured snippets for lots of programming language
Plug 'dsznajder/vscode-es7-javascript-react-snippets' "ES7 React/Redux/GraphQL/React-Native snippets
Plug 'Alexisvt/flutter-snippets' " Flutter widget snippets
Plug 'Nash0x7E2/awesome-flutter-snippets' " Flutter snippets
" end snippets
" begin cmp plugins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'hrsh7th/cmp-buffer'
" end cmp plugins
Plug 'RRethy/vim-illuminate' " automatically highlighting other uses of the current word under the cursor
Plug 'sunjon/shade.nvim' " dims your inactive windows, making it easier to see the active window at a glance
Plug 'glepnir/dashboard-nvim' " dashboard
Plug 'akinsho/bufferline.nvim' " display buffers on top
Plug 'kazhala/close-buffers.nvim' " quickly delete multiple buffers, work with bufferline
Plug 'hoob3rt/lualine.nvim' " statusline
Plug 'ggandor/lightspeed.nvim' " vim-sneak for neovim
Plug 'tpope/vim-repeat' " repeat command
Plug 'folke/trouble.nvim' " provide all kind of diagnostics
Plug 'akinsho/flutter-tools.nvim' " addtional tools for flutter
Plug 'lewis6991/gitsigns.nvim' " git decoration
Plug 'windwp/nvim-autopairs' " auto close parentheses and more
Plug 'windwp/nvim-ts-autotag' " auto tag like <div></div>
Plug 'dracula/vim' " dracular theme
Plug 'projekt0n/github-nvim-theme' " github theme
Plug 'tversteeg/registers.nvim' " registers manager
Plug 'abecodes/tabout.nvim' " tab you out of bracket
Plug 'mg979/vim-visual-multi'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'preservim/vimux'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

" pick a map leader
let mapleader = ","
set noswapfile
set mouse=a

set inccommand=nosplit

" font
set guifont=Hack

" File detection
filetype on

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Encoding
set encoding=utf-8


" time to wait for a mapped sequence to complete
set timeoutlen=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" signcolumn
set scl=yes:2

" Indentation
set expandtab
set shiftwidth=0
set softtabstop=0
set tabstop=2
set cindent

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set mps+=<:> " use % to jump between pairs

" source file
nnoremap <F12> :source %<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Navigate between screens
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Allow hidden buffers
set hidden

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set incsearch
set ignorecase
set smartcase
set showmatch

" Splitting
set splitright
set splitbelow

" colorscheme
set termguicolors
colorscheme github_dark_default

" closetags
let g:closetag_filenames = '*.js, *.jsx, *.ts, *.tsx'

" clear search highlight
nmap <esc> :noh<CR>
nmap ? :noh<CR>

" Find files using Telescope command-line sugar.
nnoremap <space>f <cmd>Telescope find_files<cr>
" search for symbols
nnoremap <silent> <space>a :Telescope lsp_document_symbols<CR>
nnoremap <silent> <space>w :Telescope lsp_workspace_symbols<CR>
" search anything in workspace
nnoremap <silent> <space>l <cmd>Telescope live_grep<cr>
" search current open buffers
nnoremap <C-p> <cmd>Telescope buffers<cr>
nnoremap <space>p <cmd>Telescope buffers<cr>
" search for commands
nnoremap <space>h <cmd>Telescope help_tags<cr>

" Files explorer
let g:nvim_tree_width = 40
nnoremap <space>e :NvimTreeToggle<CR>
nnoremap <space>r :NvimTreeRefresh<CR>

" copy and paste from clipboard
vnoremap <leader>c "+y
vnoremap <leader>v "+p
nnoremap <leader>v "+p
inoremap <C-v> <C-r>+

" stop insert mode
inoremap jj <ESC>
tnoremap jj <C-\><C-n>

" reload editor
nnoremap <F5> :bufdo! e<CR>

nnoremap $ g_
nnoremap 0 _

" buffer managment
nnoremap <a-j> :BufferLineCyclePrev<CR>
nnoremap <a-k> :BufferLineCycleNext<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>a :wa<CR>
nnoremap <a-w> :BDelete this<CR>
nnoremap <a-a> :BWipeout all<CR>
nnoremap <a-q> :q<CR>


" Vimux
let g:VimuxHeight = '35'
let g:VimuxOrientation = 'h'
nnoremap <silent> <space><space> :VimuxPromptCommand<CR>
nnoremap <silent> <space>vz :VimuxZoomRunner<CR>
nnoremap <silent> <space>vv :VimuxTogglePane<CR>
nnoremap <silent> <space>vc :VimuxCloseRunner<CR>
nnoremap <silent> <space>vx :call VimuxInterruptRunner()<CR>
nnoremap <silent> <space>vi :call VimuxInspectRunner()<CR>
nnoremap <silent> <space>vl :VimuxRunLastCommand<CR>
nnoremap <silent> <space>vr :VimuxClearTerminalScreen<CR>

" split screen
nnoremap <silent>\\ :vsplit<CR>
" resize
nnoremap <silent> = :vertical resize +5<CR>
nnoremap <silent> - :vertical resize -5<CR>
nnoremap <silent> + :resize +5<CR>
nnoremap <silent> _ :resize -5<CR>

" vim-dadbod
nnoremap <leader>ss :DBUIToggle<CR>

" formatting
autocmd BufWritePre * lua vim.lsp.buf.formatting_seq_sync()
nnoremap <silent> <space>s <cmd>lua vim.lsp.buf.formatting_seq_sync()<CR>
autocmd FileType sql nnoremap <silent> <space>s :%!sqlfmt<CR>

" Show documentation
nnoremap <silent> K :Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" Signature help
nnoremap <silent> gs :Lspsaga signature_help<CR>
" Jump to definition
nnoremap <silent> gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD :vsplit<CR><Cmd>lua vim.lsp.buf.definition()<CR>
" Preview definition
nnoremap <silent> gp :Lspsaga preview_definition<CR>
" Find word Reference
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
" Open code action
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader> :<C-U>Lspsaga range_code_action<CR>
" Rename
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent><F2> :Lspsaga rename<CR>
" FLoat terminal
nnoremap <silent> ;t :Lspsaga open_floaterm<CR>
tmap <silent> <C-q> jj:Lspsaga close_floaterm<CR>
nnoremap <silent> ;T :Lspsaga close_floaterm<CR>
" Jump to diagnostics
nnoremap <silent> ]g :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> [g :Lspsaga diagnostic_jump_prev<CR>
" Show diagnostics
nnoremap <silent> <space>d :Lspsaga show_cursor_diagnostics<CR>

" more diagnostic options from trouble.nvim
nnoremap <space>tt <cmd>TroubleToggle<cr>
nnoremap <space>tj <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <space>tk <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <space>tf <cmd>TroubleToggle quickfix<cr>
nnoremap <space>tl <cmd>TroubleToggle loclist<cr>
nnoremap <space>tr <cmd>TroubleToggle lsp_references<cr>

" working with flutter
nnoremap <leader>ff :FlutterRun<CR>
nnoremap <leader>fg :FlutterPubGet<CR>
nnoremap <leader>fd :FlutterDevices<CR>
nnoremap <leader>fe :FlutterEmulators<CR>
nnoremap <leader>fr :FlutterRestart<CR>
nnoremap <leader>fq :FlutterQuit<CR>
nnoremap <leader>fo :FlutterOutlineToggle<CR>
nnoremap <leader>fv :FlutterVisualDebug<CR>
nnoremap <leader>fl :FlutterDevTools<CR>
nnoremap <leader>fp :FlutterCopyProfileUrl<CR>
" Or show a list of commands in Telescope
nnoremap <leader>fc <cmd>lua require('telescope').extensions.flutter.commands()<CR>

" working with REST
nmap <leader>rr <Plug>RestNvim<CR>
nmap <leader>rl <Plug>RestNvimLast<CR>
nmap <leader>rp <Plug>RestNvimPreview<CR>

" snippet
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      :'<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      :'<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      :'<S-Tab>'

" testing
let test#strategy = "dispatch"
nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ts :TestSuite<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>tv :TestVisit<CR>

" markdown
nnoremap <leader>mp :MarkdownPreview<CR>
nnoremap <leader>ms :MarkdownPreviewStop<CR>
nnoremap <leader>mm :MarkdownPreviewToggle<CR>

" lightspeed
nmap <expr> f reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_f" : "f"
nmap <expr> F reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_F" : "F"
nmap <expr> t reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_t" : "t"
nmap <expr> T reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_T" : "T"

" illuminate
let g:Illuminate_delay = 300 " in milliseconds
let g:Illuminate_ftblacklist = ['nerdtree', 'dashboard', 'NvimTree']
nnoremap <silent> <a-n> <cmd>lua require"illuminate".next_reference{wrap=true}<cr>
nnoremap <silent> <a-p> <cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>

" Fix auto-indentation for YAML files
augroup yaml_fix
  autocmd!
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

" colorize (hexokinase)
let g:Hexokinase_optInPatterns = [
      \  'full_hex',
      \  'triple_hex',
      \  'rgb',
      \  'rgba',
      \  'hsl',
      \  'hsla',
      \  'colour_names'
      \]
let g:Hexokinase_ftEnabled = ['sass', 'css', 'html', 'javascript', 'typescript']

" auto completion
autocmd FileType sql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
set completeopt-=longest

" dashboard
let g:dashboard_default_executive ='telescope'
let g:indentLine_fileTypeExclude = ['dashboard']

" only available in neovim >= 5
lua << EOF
-- Syntax highlighting support
local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
parser_configs.http = {
  install_info = {
    url = "https://github.com/NTBBloodbath/tree-sitter-http",
    files = {"src/parser.c"},
    branch = "main"
  }
}
require "nvim-treesitter.configs".setup {
    ensure_installed = "all",
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}

-- completion
-- If you want to insert `(` after select function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require "cmp"
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({map_char = {tex = ""}}))
cmp.setup(
    {
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
        mapping = {
            ["<C-space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.close(),
            ["<Tab>"] = function(fallback)
                if cmp.visible() then
                    -- cmp.select_next_item
                    cmp.confirm(
                        {
                            behavior = cmp.ConfirmBehavior.Insert,
                            select = true
                        }
                    )
                elseif vim.fn["vsnip#available"](1) ~= 0 then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-expand-or-jump)", true, true, true), "")
                else
                    fallback()
                end
            end,
            ["<S-Tab>"] = function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif vim.fn["vsnip#available"](1) ~= 0 then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-jump-prev)", true, true, true), "")
                else
                    fallback()
                end
            end,
            ["<C-f>"] = cmp.mapping.confirm(
                {
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true
                }
            )
        },
        sources = {
            {name = "nvim_lsp"},
            {name = "vsnip"},
            {name = "buffer"}
        },
        formatting = {
            format = function(entry, vim_item)
                -- fancy icons and a name of kind
                vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

                return vim_item
            end
        }
    }
)
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local lsp_installer = require("nvim-lsp-installer")
-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(
    function(server)
        local opts = {
            capabilities = capabilities,
            on_attach = function(client)
                require("illuminate").on_attach(client)
            end
        }

        -- (optional) Customize the options passed to the server
        if server.name == "angularls" then
            opts.root_dir = function()
                return root_pattern("angular.json")
            end
        end

        if server.name == "jsonls" then
            opts.settings = {
                json = {
                    schemas = require("schemastore").json.schemas()
                }
            }
        end

        -- This setup() function is exactly the same as lspconfig's setup function.
        -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        server:setup(opts)
    end
)

-- flutter-tools
require('flutter-tools').setup{}

-- indent guides
vim.opt.list = true
--vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true
}

require("lualine").setup {
    options = {
        theme = "github"
    }
}

local saga = require("lspsaga")
saga.init_lsp_saga()

require("trouble").setup {
    position = "right",
    width = 70
}


-- telescope integration
local telescope = require("telescope")
telescope.setup {
    defaults = {
        file_ignore_patterns = {"node_modules", ".git"}
    },
  pickers = {
    find_files = {
      hidden = true
      }
    }
}
telescope.load_extension("flutter")

require "nvim-tree".setup {
    view = {
        width = 50,
        auto_resize = true
    }
}

require'shade'.setup({
  overlay_opacity = 50,
  opacity_step = 1,
})

require("bufferline").setup {
  options = {
    numbers = "buffer_id"
  }
}

require('close_buffers').setup({
  preserve_window_layout = { 'this' },
  next_buffer_cmd = function(windows)
    require('bufferline').cycle(1)
    local bufnr = vim.api.nvim_get_current_buf()

    for _, window in ipairs(windows) do
      vim.api.nvim_win_set_buf(window, bufnr)
    end
  end,
})

require("rest-nvim").setup {}
require("nvim-ts-autotag").setup {}
require("nvim-autopairs").setup {}
require("gitsigns").setup {}
require('tabout').setup{}
EOF
