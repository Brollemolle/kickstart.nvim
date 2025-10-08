return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'InsertEnter',
    opts = {
      panel = { enabled = false },
      suggestion = { enabled = false },
      filetypes = {
        -- Enable for most languages, disable for prompts/help buffers
        markdown = true,
        help = false,
        gitcommit = true,
        dapui_watches = false,
        dapui_breakpoints = false,
        dapui_stacks = false,
        dapui_console = false,
      },
    },
  },
  {
    'zbirenbaum/copilot-cmp',
    dependencies = { 'zbirenbaum/copilot.lua' },
    event = 'InsertEnter',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
