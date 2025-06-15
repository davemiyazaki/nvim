return{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",     -- optional - Diff integration
  },
  config = function()
    local neogit = require('neogit')

    -- open as a split
    neogit.open({ kind = "split" })
  end;
}
