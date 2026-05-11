local dap = require("dap")
local dapui = require("dapui")

-- Setup DAP UI
dapui.setup()

-- Auto open/close DAP UI
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- Breakpoint visual
vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DiagnosticError", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DiagnosticOk", linehl = "DiffAdd", numhl = "" })

-- Chrome/JS adapter via Mason
dap.adapters["pwa-chrome"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    args = {
      vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
      "${port}",
    },
  },
}

-- Configurations for React/JS/TS
local js_config = {
  {
    type = "pwa-chrome",
    request = "launch",
    name = "Launch Chrome (localhost:3000)",
    url = "http://localhost:3000",
    webRoot = "${workspaceFolder}",
    sourceMaps = true,
  },
  {
    type = "pwa-chrome",
    request = "launch",
    name = "Launch Chrome (localhost:5173)",
    url = "http://localhost:5173",
    webRoot = "${workspaceFolder}",
    sourceMaps = true,
  },
  {
    type = "pwa-chrome",
    request = "attach",
    name = "Attach to Chrome",
    port = 9222,
    webRoot = "${workspaceFolder}",
    sourceMaps = true,
  },
}

dap.configurations.javascript = js_config
dap.configurations.javascriptreact = js_config
dap.configurations.typescript = js_config
dap.configurations.typescriptreact = js_config
