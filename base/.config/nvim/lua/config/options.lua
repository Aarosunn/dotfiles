-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mousescroll = "ver:1,hor:1"
vim.opt.winbar = "%=%m %f"

local orig_start = vim.lsp.start
vim.lsp.start = function(config, opts)
  if config and (config.name == "jac_ls" or config.name == "jac") then
    local prev = config.on_error
    config.on_error = function(code, ...)
      if code == vim.lsp.rpc.client_errors.NO_RESULT_CALLBACK_FOUND then
        return
      end
      if prev then
        return prev(code, ...)
      end
    end
  end
  return orig_start(config, opts)
end
