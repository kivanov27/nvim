return {
    {
        "karb94/neoscroll.nvim",
        opts = {},
        config = function(_, opts)
            require("neoscroll").setup(opts)

            local neoscroll = require("neoscroll")

            vim.keymap.set("n", "<C-d>", function()
                neoscroll.ctrl_d({ duration = 250 })
                vim.cmd("normal! zz")
            end)

            vim.keymap.set("n", "<C-u>", function()
                neoscroll.ctrl_u({ duration = 250 })
                vim.cmd("normal! zz")
            end)
        end,
    },
}
