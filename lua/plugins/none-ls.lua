return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        --lua formatting
        null_ls.builtins.formatting.stylua,
        --
        -- JS formatting
        null_ls.builtins.formatting.prettier,
        --null_ls.builtins.diagnostics.eslint_d, --throws error (needs to be figured out)
        --
        --Python formatting
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- 
        --Ruby On Rails formatting
        --null_ls.builtins.diagnostics.rubocop,
        --null_ls.builtins.formatting.rubocop,
        null_ls.builtins.completion.spell,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("x", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
