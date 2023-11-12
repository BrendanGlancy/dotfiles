local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>bp"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add a breakpoint at line",
    },
    ["<leader>db"] = {
      "<cmd> DapContinue <CR>",
      "Start / continue debugger",
    },
    ["<leader>dw"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dp"] = {
      function ()
        require("dap-python").test_method()
      end,
      "Debug python run",
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gat"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gay"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
