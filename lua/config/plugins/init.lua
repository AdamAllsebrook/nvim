return {
    { 'mbbill/undotree',       cond = not vim.g.vscode },
    { 'kdheepak/lazygit.nvim', cond = not vim.g.vscode },
    { 'github/copilot.vim',    cond = not vim.g.vscode },
    { 'tpope/vim-rails',       cond = not vim.g.vscode },
    { 'APZelos/blamer.nvim',   cond = not vim.g.vscode },
    { 'numToStr/Comment.nvim', config = true },
    -- {
    --     'ggandor/leap.nvim',
    --     dependencies = { 'tpope/vim-repeat' },
    --     init = function()
    --         require('leap').add_default_mappings()
    --     end
    -- },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {
            modes = { search = { enabled = true, highlight = { backdrop = true } } }
        },
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            {
                "S",
                mode = { "n", "x", "o" },
                function() require("flash").treesitter() end,
                desc =
                "Flash Treesitter"
            },
            {
                "r",
                mode = "o",
                function() require("flash").remote() end,
                desc =
                "Remote Flash"
            },
            {
                "R",
                mode = { "o", "x" },
                function() require("flash").treesitter_search() end,
                desc =
                "Treesitter Search"
            },
            {
                "<c-s>",
                mode = { "c" },
                function() require("flash").toggle() end,
                desc =
                "Toggle Flash Search"
            },
        },
    },
    { 'windwp/nvim-autopairs',  config = true, },
    { 'windwp/nvim-ts-autotag', cond = not vim.g.vscode, config = true, },
    {
        'julian/vim-textobj-variable-segment',
        dependencies = { 'kana/vim-textobj-user' },
    },
    'tpope/vim-surround',
    { 'davidgranstrom/nvim-markdown-preview', cond = not vim.g.vscode, },
    {
        'j-morano/buffer_manager.nvim',
        cond = not vim.g.vscode,
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'christoomey/vim-tmux-navigator',       cond = not vim.g.vscode },
    'joerdav/templ.vim',
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    }
}
