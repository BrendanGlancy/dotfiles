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

return M
