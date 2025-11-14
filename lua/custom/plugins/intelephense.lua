return {
  'neovim/nvim-lspconfig', -- This is the main plugin for LSP support
  config = function()
    vim.lsp.config('intelephense', {
      cmd = { 'intelephense', '--stdio' },
      filetypes = { 'php' },
      root_dir = function(fname)
        return vim.uv.cwd()
      end,
      settings = {
        intelephense = {
          files = {
            maxSize = 1000000,
          },
          format = {
            braces = 'k&r',
          },
        },
        diagnostics = {
          undefinedTypes = false,
          undefinedFunction = true,
          undefinedConstants = true,
          undefinedClassConstants = true,
          undefinedMethods = true,
          undefinedProperties = true,
          undefinedVariables = true,
        },
      },
    })
  end,
  event = { 'BufReadPre' }, -- Loads on buffer read
  ft = { 'php' }, -- For PHP filetypes
}
