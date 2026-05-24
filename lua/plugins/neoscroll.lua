return {
    "karb94/neoscroll.nvim",
    enabled = false,
    opts = {
        mappings = { "<C-u>", "<C-d>" },
    },
    config = function(_, opts)
        local neoscroll = require("neoscroll")
        neoscroll.setup(opts)

        vim.keymap.set("n", "<C-d>", function()
            neoscroll.ctrl_d({ duration = 100 })
            vim.cmd("normal! zz")
        end)

        vim.keymap.set("n", "<C-u>", function()
            neoscroll.ctrl_u({ duration = 100 })
            vim.cmd("normal! zz")
        end)
    end,
}
