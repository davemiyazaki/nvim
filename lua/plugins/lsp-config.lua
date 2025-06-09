return{
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
        require('mason-lspconfig').setup({
          ensure_installed = {"lua_ls", "ts_ls", "jdtls", 'emmet_language_server'}
        })
      end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
       
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n','gh', vim.lsp.buf.hover, {})
      vim.keymap.set('n','gd', vim.lsp.buf.definition,{})
      vim.keymap.set('n','ga',vim.lsp.buf.code_action, {})
    end
  }

}
