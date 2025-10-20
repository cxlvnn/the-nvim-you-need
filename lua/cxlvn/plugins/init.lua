return {
    -- telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- vague 2k colorscheme
    {
        'vague2k/vague.nvim',
        lazy = false,
        priority = 1000,
    },

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"
    },

    -- undotree
    { "mbbill/undotree" },

    -- neo-tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
    },
}
