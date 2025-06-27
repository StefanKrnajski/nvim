-- Create an event handler for the FileType autocommand
vim.api.nvim_create_autocmd('FileType', {
  -- This handler will fire when the buffer's 'filetype' is "rust"
  pattern = 'rust',
  callback = function(ev)
    vim.lsp.start({
      name = 'rust',
      cmd = {'rust-analyzer'}
    })
  end,
})


vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client.supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})


vim.lsp.config['rust'] = {
  cmd = { 'rust-analyzer' },

  -- Filetypes to automatically attach to.
  filetypes = { 'rs' },
}


