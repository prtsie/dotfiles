return {
    'mrcjkb/haskell-tools.nvim',
    version = '^6',
    lazy = false,
    keys = {
        { '<space>cl', vim.lsp.codelens.run, desc = 'Run code lens' },
        { '<space>hs', function() require('haskell-tools').hoogle.hoogle_signature() end, desc = 'Hoogle signature' },
        { '<space>ea', function() require('haskell-tools').lsp.buf_eval_all() end, desc = 'Eval all snippets' },
        { '<leader>hr', function() require('haskell-tools').repl.toggle() end, desc = 'Toggle REPL (package)' },
        { '<leader>hf', function() require('haskell-tools').repl.toggle(vim.api.nvim_buf_get_name(0)) end, desc = 'Toggle REPL (buffer)' },
        { '<leader>hq', function() require('haskell-tools').repl.quit() end, desc = 'Quit REPL' },
    },
}
