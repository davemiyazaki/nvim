return {
  
	  "thesimonho/kanagawa-paper.nvim",
	  name = "kanagawa-paper",
	  lazy = false,
	  priority = 1000,
	  opts = {},
    config = function()
      vim.cmd.colorscheme 'kanagawa-paper'

      local hour = os.date("*t").hour
      vim.o.background = (hour >= 7 and hour < 20) and "light" or "dark"
    end
}
