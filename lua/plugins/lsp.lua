return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "ts_ls",
                "html",
                "cssls",
                "tailwindcss",
                "pyright",
                "eslint"
            },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗"
                        }
                    }
                }
            },
            {
                "neovim/nvim-lspconfig",
                config = function()
                    vim.api.nvim_create_autocmd("LspAttach", {
                        group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
                        callback = function(event)
                            local map = function(keys, func, desc, mode)
                                mode = mode or "n"
                                vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
                            end

                            map("grn", vim.lsp.buf.rename, "[R]e[n]ame")
                            map("gra", vim.lsp.buf.code_action, "[G]oto Code [A]ction", { "n", "x" })
                            map("grD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

                            local client = vim.lsp.get_client_by_id(event.data.client_id)
                            if client and client:supports_method("textDocument/inlayHint", event.buf) then
                                map("<leader>th", function()
                                    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
                                end, "[T]oggle Inlay [H]ints")
                            end
                        end
                    })
                end
            }
        }
    },
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = { documentation = { auto_show = false } },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            -- switch to prefer_rust when you can
            fuzzy = { implementation = "lua" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
