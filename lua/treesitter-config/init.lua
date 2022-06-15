require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {  "lua", "typescript", "css", "json" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  autotag = {
    enable = true,
  },
  highlight = {
    enable = true,
   additional_vim_regex_highlighting = false,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
     navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<A-*>",
        goto_previous_usage = "<A-#>",
      },
    },
  },
}
