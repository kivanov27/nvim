return {
    "folke/which-key.nvim",
    event = "VimEnter",
    opts = {
        delay = 0,
        icons = { mappings = vim.g.have_nerd_font },
        spec = {
            { "<leader>f", group = "[F]ind", mode = { "n", "v" } },
            { "<leader>t", group = "[T]toggle" },
            { "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
            { "<leader>b", group = "De[b]ug" },
            { "<leader>p", group = "[P]roject" },
            { "<leader>v", group = "[V]iew" },
        },
    },
}
