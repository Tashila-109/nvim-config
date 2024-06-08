local M = {
  filetype = {
    -- lua
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    -- Cool languages
    go = {
      require("formatter.filetypes.go").gofumpt,
      require("formatter.filetypes.go").goimports_reviser,
      require("formatter.filetypes.go").golines,
    },
    -- Web dev
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})

return M
