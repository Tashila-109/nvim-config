local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

M.text = {
  -- Custom vertical movement
  n = {
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
  },
  x = {
    ["<leader>p"] = { '"_dP' },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

-- M.copilot = {
--   i = {
--     ["<C-l>"] = {
--       function()
--         vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
--       end,
--       "Copilot Accept",
--       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
--     }
--   }
-- }

M.trouble = {
  n = {
    ["<leader>tx"] = {
      "<cmd>TroubleToggle<CR>",
      "Toggle Trouble",
    },
    ["<leader>xw"] = {
      "<cmd> Trouble lsp_workspace_diagnostics <CR>",
      "Workspace diagnostics",
    },
    ["<leader>xd"] = {
      "<cmd> Trouble lsp_document_diagnostics <CR>",
      "Document diagnostics",
    },
    ["<leader>xl"] = {
      "<cmd> Trouble loclist <CR>",
      "Loclist",
    },
    ["<leader>xq"] = {
      "<cmd> Trouble quickfix <CR>",
      "Quickfix",
    },
  },
}

M.harpoon = {
  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "󱡁 Harpoon Add file",
    },
    ["<leader>ta"] = { "<CMD>Telescope harpoon marks<CR>", "󱡀 Toggle quick menu" },
    ["<leader>hb"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "󱠿 Harpoon Menu",
    },
    ["<leader>1"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<leader>2"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<leader>3"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "󱪾 Navigate to file 3",
    },
    ["<leader>4"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "󱪿 Navigate to file 4",
    },
    ["<leader>hn"] = {
      function()
        require("harpoon.ui").nav_next()
      end,
      "󱫀 Navigate to next",
    },
    ["<leader>hp"] = {
      function()
        require("harpoon.ui").nav_prev()
      end,
      "󱫁 Navigate to previous",
    },
  },
}

return M
