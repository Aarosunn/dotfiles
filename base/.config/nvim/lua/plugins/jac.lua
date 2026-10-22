return {
  "chess10kp/jac.nvim",
  ft = "jac",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("jac").setup({
      treesitter = { auto_install = true },
      blink = true,
    })
  end,
}
