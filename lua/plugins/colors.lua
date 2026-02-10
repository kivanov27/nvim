return {
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("catppuccin")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end,
    -- },
    -- {
    --     "neanias/everforest-nvim",
    --     version = false,
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("everforest")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end,
    -- },
    -- {
    --     'sainnhe/gruvbox-material',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- vim.g.gruvbox_material_enable_italic = true
    --         vim.cmd.colorscheme('gruvbox-material')
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end
    -- },
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd("colorscheme rose-pine")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end
    -- },
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme oldworld")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
}
