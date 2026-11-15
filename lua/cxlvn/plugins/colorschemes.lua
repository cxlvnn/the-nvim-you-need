return {
  -- vague
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
  },

  -- yorumi
  {
    "yorumicolors/yorumi.nvim",
  },

  -- koda
  {
    "oskarnurm/koda.nvim",
  },

  -- poimandres
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
  },

  -- sora
  {
    "Aejkatappaja/sora",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, opts)
      require("sora").setup(opts)
    end,
  },

  -- oxidscheme
  {
    "oxidescheme/nvim",
    name = "oxide",
    lazy = false,
    priority = 1000,
    config = function()
      require("oxide").setup()
      vim.cmd.colorscheme("oxide")
    end,
  },
}
