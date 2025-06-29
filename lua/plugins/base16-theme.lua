return {
  "RRethy/base16-nvim",
  config = function()
    local base16 = require('base16-colorscheme')
    base16.with_config({
      telescope = true,
      indentblankline = true,
      notify = true,
      ts_rainbow = true,
      cmp = true,
      illuminate = true,
      dapui = true,
    })
    vim.cmd('colorscheme base16-catppuccin-latte')
  end,
}
