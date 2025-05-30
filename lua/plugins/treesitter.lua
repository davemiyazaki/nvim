return {
  "nvim-treesitter/nvim-treesitter", 
  lbranch = 'master', 
  lazy = false, 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "java", "cpp"},
      auto_isntall = true,
      highlight = {enable = true},
      indent = { enable = true},
    })
  end
}
