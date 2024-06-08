---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "tokyonight",
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    separator_style = "arrow",
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
      -- [[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
      -- [[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
      -- [[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
      -- [[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
      -- [[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
      -- [[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
      -- [[      ██████╗ ██████╗  ██████╗ ██╗        ]],
      -- [[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
      -- [[     ██║     ██║   ██║██║   ██║██║        ]],
      -- [[     ██║     ██║   ██║██║   ██║██║        ]],
      -- [[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
      -- [[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
      -- [[███████╗████████╗██╗   ██╗███████╗███████╗]],
      -- [[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
      -- [[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
      -- [[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
      -- [[███████║   ██║   ╚██████╔╝██║     ██║     ]],
      -- [[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
