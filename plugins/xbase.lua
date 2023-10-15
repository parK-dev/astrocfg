return {
  {
    "xbase-lab/xbase",
    run = "make install", -- or "make install && make free_space" (not recommended, longer build time)
    ft = {
      "swift",
      "objcpp",
      "objc",
    },
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim", -- optional
      "nvim-lua/plenary.nvim", -- optional/requirement of telescope.nvim
      -- "stevearc/dressing.nvim", -- optional (in case you don't use telescope but something else)
    },
    opts = {
      log_level = vim.log.levels.DEBUG,
      sourcekit = nil,
      statusline = {
        watching = { icon = "", color = "#1abc9c" },
        device_running = { icon = "", color = "#4a6edb" },
        success = { icon = "", color = "#1abc9c" },
        failure = { icon = "", color = "#db4b4b" },
      },
      simctl = {
        iOS = {
          "iPhone 15", -- Uncomment and specify the devices you want to include, acts like a filter
        },
        watchOS = {},
        tvOS = {},
      },
      log_buffer = {
        focus = true,
        height = 20,
        width = 75,
        default_direction = "horizontal",
      },
      mappings = {
        enable = true,
        build_picker = "<leader>rb", -- Set to 0 to disable
        run_picker = "<leader>rr", -- Set to 0 to disable
        watch_picker = "<leader>rw", -- Set to 0 to disable
        all_picker = 0, -- Set to 0 to disable
        toggle_split_log_buffer = "<leader>rl",
        toggle_vsplit_log_buffer = "<leader>rv",
      },
    },
    init = function() require("astronvim.utils.lsp").setup "sourcekit" end,
  },
}
