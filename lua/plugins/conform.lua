return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>=",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "",
            desc = "[=] format buffer",
        },
    },
    opts = {
        notify_on_error = false,
        format_on_save = false,
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            javascript = { "prettierd", "prettier", stop_after_first = true },
            typescript = { "prettierd", "prettier", stop_after_first = true },
            javascriptreact = { "prettierd", "prettier", stop_after_first = true },
            typescriptreact = { "prettierd", "prettier", stop_after_first = true },
            json = { "prettierd", "prettier", stop_after_first = true },
            html = { "prettierd", "prettier", stop_after_first = true },
            css = { "prettierd", "prettier", stop_after_first = true },
            scss = { "prettierd", "prettier", stop_after_first = true },
            markdown = { "prettierd", "prettier", stop_after_first = true },
            yaml = { "prettierd", "prettier", stop_after_first = true },
        },
        formatters = {
            prettier = {
                prepend_args = {
                    "--tab-width=4",
                    "--use-tabs=false",
                },
            },
            prettierd = {
                prepend_args = {
                    "--tab-width=4",
                    "--use-tabs=false",
                },
            },
            stylua = {
                prepend_args = {
                    "--indent-width=4",
                    "--indent-type=Spaces",
                },
            },
            black = {
                prepend_args = {
                    "--line-length=88",
                },
            },
            isort = {
                prepend_args = {
                    "--profile=black",
                },
            },
        },
    },
    config = function(_, opts)
        require("conform").setup(opts)
    end,
}
