local M = {}

function M.setup()
   vim.keymap.set("n", "<Leader>j", function()
    local date = os.date('%Y-%m-%d')
    local filename = date .. '.md'
    local file = io.open(filename, 'r')

    -- if file extists, open it
    if file then
      file:close()
      vim.api.nvim_command('edit ' .. filename)
      return
    end

    local file = io.open(filename, 'w')
    file:close()
    vim.api.nvim_command('edit ' .. filename)
  end)
end

return M