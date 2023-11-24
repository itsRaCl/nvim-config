local lsp = require('lsp-zero').preset({})

lsp.nvim_workspace()


lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    local opts = { buffer = bufnr, remap = false }

    lsp.default_keymaps({ buffer = bufnr })
    lsp.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
    })
    lsp.buffer_autoformat()
end)
--lsp.format_on_save({
--format_opts = {
--async = false,
--timeout_ms = 100000
--},
--servers = {
--['rust-analyzer'] = { 'rust' },
--['null-ls'] = { 'javascript', 'typescript', 'python', 'json', 'css', 'scss', 'markdown',
--'javascriptreact', 'typescriptreact', 'vue' },
--['lua_ls'] = { 'lua' },
--}
--})


lsp.setup()
