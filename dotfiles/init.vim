call plug#begin('~/.vim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig' " neovim native language server support
Plug 'stevearc/dressing.nvim' " improve neovim ui
Plug 'rmagatti/goto-preview' " previewing native LSP's goto definition calls in floating windows.
Plug 'numToStr/FTerm.nvim' " floating terminal
Plug 'williamboman/nvim-lsp-installer' " language server installer
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim' " finder
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " File explorer
Plug 'onsails/lspkind-nvim' " display the fancy icons to completion-menu
Plug 'lukas-reineke/indent-blankline.nvim' " indentation guides
Plug 'vim-test/vim-test' " A Vim wrapper for running tests on different granularities
Plug 'tpope/vim-dispatch' " kicks off tests asynchronously
Plug 'ray-x/go.nvim' " add/remove tags for go's structs and many more
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown-preview
Plug 'norcalli/nvim-colorizer.lua' " colorize colornames and hexcode
Plug 'b0o/SchemaStore.nvim' " providing access to the SchemaStore catalog
Plug 'tpope/vim-dotenv' " support for .env
" begin snippets
Plug 'hrsh7th/vim-vsnip' " vscode's snippet feature in vim.
Plug 'xabikos/vscode-javascript' "javascript snippet
" end snippets
" begin cmp plugins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" end cmp plugins
Plug 'folke/todo-comments.nvim'
Plug 'rcarriga/nvim-notify' " notification window
Plug 'folke/zen-mode.nvim' " distraction-free
Plug 'sindrets/diffview.nvim' " Single tabpage interface for easily cycling through diffs for any git rev
Plug 'beauwilliams/focus.nvim' " Window Management Enhancements for Neovim
Plug 'f-person/git-blame.nvim' " provide gitblame functionality
Plug 'jose-elias-alvarez/null-ls.nvim' " better than efm-language-server
Plug 'akinsho/bufferline.nvim' " display buffers on top
Plug 'kazhala/close-buffers.nvim' " quickly delete multiple buffers, work with bufferline
Plug 'hoob3rt/lualine.nvim' " statusline
Plug 'ggandor/lightspeed.nvim' " vim-sneak for neovim
Plug 'tpope/vim-repeat' " repeat command
Plug 'folke/trouble.nvim' " provide all kind of diagnostics
Plug 'lewis6991/gitsigns.nvim' " git decoration
Plug 'steelsojka/pears.nvim' " auto close parentheses and more
Plug 'windwp/nvim-ts-autotag' " auto tag like <div></div>
Plug 'dracula/vim' " dracular theme
Plug 'projekt0n/github-nvim-theme' " github theme
Plug 'rebelot/kanagawa.nvim' " kanagawa theme
" Plug 'tversteeg/registers.nvim' " registers manager
Plug 'abecodes/tabout.nvim' " tab you out of bracket
Plug 'mg979/vim-visual-multi'
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
set shortmess-=F

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
nnoremap <silent> <F12> :source %<CR>
" Move up/down editor lines
nnoremap j gj
nnoremap k gk

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
colorscheme github_dimmed
" colorscheme kanagawa

" closetags
let g:closetag_filenames = '*.js, *.jsx, *.ts, *.tsx'

" clear search highlight
nmap <esc> :noh<CR>

" Find files using Telescope command-line sugar.
nnoremap <space>f <cmd>Telescope find_files<cr>
" search for symbols
nnoremap <silent> <space>s :Telescope lsp_document_symbols<CR>
nnoremap <silent> <space>w :Telescope lsp_workspace_symbols
" search anything in workspace
nnoremap <silent> <space>l <cmd>Telescope live_grep<cr>
" search current open buffers
nnoremap <C-p> <cmd>Telescope buffers<cr>
nnoremap <space>p <cmd>Telescope buffers<cr>
" search for commands
nnoremap <space>h <cmd>Telescope help_tags<cr>

" Files explorer
nnoremap <silent> <space>e :CHADopen<CR>
tnoremap <silent> <space>e <C-\><C-n>:CHADopen<CR>

" copy and paste from clipboard
vnoremap <leader>c "+y
vnoremap <leader>v "+p
nnoremap <leader>v "+p
inoremap <C-v> <C-o>"+p
"
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
nnoremap <a-a> :BWipeout hidden<CR>
nnoremap <c-w> :q<CR>


" Vimux
let g:VimuxHeight = '40'
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
nnoremap <silent> \\ :FocusSplitNicely<CR>
nnoremap <silent> <c-k> :FocusSplitCycle<CR>
nnoremap <silent> <c-j> :FocusSplitCycle reverse<CR>

" resize
nnoremap <silent> = :vertical resize +5<CR>
nnoremap <silent> - :vertical resize -5<CR>
nnoremap <silent> + :resize +5<CR>
nnoremap <silent> _ :resize -5<CR>

" formatting
autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
nnoremap <silent> <leader>f <cmd>lua vim.lsp.buf.formatting_sync()<CR>


" Show documentation
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" Signature help
nnoremap <silent> gs <cmd>lua vim.lsp.buf.signature_help()<CR>
" Jump to definition
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gds :FocusSplitNicely<CR><cmd>lua vim.lsp.buf.definition()<CR>
" Preview definition
nnoremap <silent> gp <cmd>lua require('goto-preview').goto_preview_definition()<CR>
" Find word Reference
nnoremap <silent> gh <cmd>lua require('goto-preview').goto_preview_references()<CR>
" Code action
nnoremap <silent> <space>. <cmd>lua vim.lsp.buf.code_action()<CR>
vnoremap <silent> <space>. <cmd>lua vim.lsp.buf.range_code_action()<CR>
" Rename
nnoremap <silent> gr <cmd>lua vim.lsp.buf.rename()<CR>
" FLoat terminal
nnoremap <silent> ;t <cmd>lua require("FTerm").toggle()<CR>
tnoremap <silent> <w-q> <C-\><C-n><cmd>lua require("FTerm").toggle()<CR>
" Jump to diagnostics
nnoremap <silent> ]g <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> [g <cmd>lua vim.diagnostic.goto_prev()<CR>
" Show diagnostics
nnoremap <silent> <space>d vim.lsp.diagnostic.show_line_diagnostics()

" more diagnostic options from trouble.nvim
nnoremap <space>t <cmd>TroubleToggle<cr>

" testing
let test#strategy = "vimux"
nnoremap <silent> <leader>tt :TestNearest -strategy=dispatch_background<CR>
nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>tf :TestFile<CR>

" markdown
nnoremap <leader>mp :MarkdownPreview<CR>
nnoremap <leader>ms :MarkdownPreviewStop<CR>
nnoremap <leader>mm :MarkdownPreviewToggle<CR>

" lightspeed
nmap <expr> f reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_f" : "f"
nmap <expr> F reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_F" : "F"
nmap <expr> t reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_t" : "t"
nmap <expr> T reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_T" : "T"

" Fix auto-indentation for YAML files
augroup yaml_fix
  autocmd!
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

" auto completion
set completeopt-=longest

" git
let g:gitblame_enabled = 0

nnoremap <silent> ;f :ZenMode<CR>

" only available in neovim >= 5
lua << EOF
-- Syntax highlighting support
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
local cmp = require "cmp"
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
                    -- cmp.select_next_item()
                    cmp.confirm(
                        {
                            behavior = cmp.ConfirmBehavior.Insert,
                            select = true
                        }
                    )
                elseif vim.fn["vsnip#available"](1) ~= 0 then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-expand-or-jump)", true, true, true), "")
                else
                    -- fallback()
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(Tabout)", true, true, true), "")
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
            {name = "path"},
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
        }

        if server.name == "tsserver" or server.name == "jsonls" or server.name == "stylelint_lsp" then
          opts.on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = false
            client.resolved_capabilities.document_range_formatting = false
          end
        end

        if server.name == "angularls" then
            opts.root_dir = function()
                return root_pattern("angular.json")
            end
        end

        if server.name == "cssmodules_ls" then
          opts.filetypes = {"javascriptreact", "typescriptreact"}
        end

        if server.name == "jsonls" then
            opts.capabilities.textDocument.completion.completionItem.snippetSupport = true
            opts.settings = {
                json = {
                    schemas = require("schemastore").json.schemas()
                }
            }
        end

        if server.name == "sumneko_lua" then
          opts = require("lua-dev").setup({})
        end

        -- This setup() function is exactly the same as lspconfig's setup function.
        -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

        server:setup(opts)
    end
)

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
        theme = "github_dimmed"
    }
}

require("trouble").setup {
    position = "right",
    width = 70
}


-- telescope integration
local telescope = require("telescope")
telescope.setup {}

require("bufferline").setup {
  options = {
    numbers = "buffer_id"
  }
}

require('close_buffers').setup({
  preserve_window_layout = { 'this', 'hidden' },
  next_buffer_cmd = function(windows)
    require('bufferline').cycle(1)
    local bufnr = vim.api.nvim_get_current_buf()

    for _, window in ipairs(windows) do
      vim.api.nvim_win_set_buf(window, bufnr)
    end
  end,
})

local nullls = require('null-ls')
nullls.setup({
  sources = {
    nullls.builtins.formatting.black,
    nullls.builtins.diagnostics.mypy,
    nullls.builtins.formatting.prettierd,
    nullls.builtins.formatting.shfmt,
    nullls.builtins.diagnostics.shellcheck,
    nullls.builtins.code_actions.shellcheck,
  }
})

require("nvim-ts-autotag").setup {}
require("pears").setup()
require("gitsigns").setup {}
require('tabout').setup{}
require'colorizer'.setup()
require("focus").setup()
require'diffview'.setup()
require("zen-mode").setup{}

vim.notify = require("notify")
require('go').setup()
require('dressing').setup{}
require('goto-preview').setup{}
require('todo-comments').setup{}

EOF
