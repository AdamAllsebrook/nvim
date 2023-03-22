local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = true,
    sources = {
        formatting.prettier,
        formatting.black.with({ extra_args = { '--fast' } }),
        formatting.stylua,
        diagnostics.flake8,
    },
})