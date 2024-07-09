-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'max397574/better-escape.nvim',
    event = 'InsertEnter',
    config = function()
      require('better_escape').setup()
    end,
  },

  -- {
  --     "ThePrimeagen/harpoon",
  --     branch = "harpoon2",
  --     dependencies = { "nvim-lua/plenary.nvim" },
  --     config = function()
  --       local harpoon = require("harpoon")
  --       require('better_escape').setup()
  --       harpoon:setup()
  --     end,
  -- },

  -- if issues come up with nvterm use this : https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file
  --{
  -- amongst your other plugins
  --  {'akinsho/toggleterm.nvim', version = "*", config = true}
  -- or
  --  {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
  --}

  {
    'akinsho/bufferline.nvim',
    version = '*', -- Specifies you want the latest version.
    dependencies = { 'kyazdani42/nvim-web-devicons' }, -- Ensures icons are supported.
    config = function()
      require('bufferline').setup {
        options = {
          mode = 'buffers', -- Sets bufferline to use 'tabs' mode.
          close_command = 'bdelete! %d', -- Can be a string or function, see "Mouse actions".
          right_mouse_command = 'bdelete! %d', -- As above.
          left_mouse_command = 'buffer %d', -- As above.
          middle_mouse_command = nil, -- As above.
          -- Enabling close icons
          show_buffer_close_icons = true,
          show_close_icon = true,
          close_icon = 'x',
          --[[ close_icon = '', ]]
          separator_style = 'slant', -- or "thick" or "thin" or { 'any', 'any' }
          show_buffer_icons = true, -- disable filetype icons for buffers
          enforce_regular_tabs = true,
          always_show_bufferline = true,
          -- Unique names settings (customize as needed; this is just an example).
          -- name_formatter = function(buf) -- buf contains 'name', 'path', and 'bufnr'.
          --   -- Modify the name here if you want to change how it's displayed.
          --   return buf.name
          -- end,
          -- Adding sidebar offsets.
          offsets = {
            {
              filetype = 'neo-tree', -- Replace with the filetype of your sidebar plugin.
              text = 'File Explorer', -- Text to show in the offset section.
              highlight = 'Directory', -- Highlight group to use for the text.
              text_align = 'left', -- Alignment of the text ('left', 'center', or 'right').
              padding = 1, -- Optional padding on the left side of the offset.
            },
          },

          -- added last
          --color_icons = true, -- whether or not to add the filetype icon highlights
          --get_element_icon = function(element)
          -- element consists of {filetype: string, path: string, extension: string, directory: string}
          -- This can be used to change how bufferline fetches the icon
          -- for an element e.g. a buffer or a tab.
          --local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
          -- Define your custom map before trying to return anything
          --local custom_map = {my_thing_ft = {icon = "my_thing_icon", hl = "highlight_group_name"}}
          -- Now you can return using the custom map and fallback to default icon, hl
          --return custom_map[element.filetype] or {icon, hl}
          --end,
        },
      }
    end,
  },

  {
    'tpope/vim-fugitive',
    event = VeryLazy,
    dependencies = {
      'tpope/vim-rhubarb',
      'tpope/vim-obsession',
      'tpope/vim-unimpaired',
    },
  },

  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require 'custom.plugins.configs.neotree'
    end,
  },

  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },


  -- nvim-dap-ui dependency
  { "nvim-neotest/nvim-nio" },


  {
    'NvChad/nvterm',
    config = function()
      require('nvterm').setup {
        terminals = {
          shell = vim.o.shell,
          list = {},
          type_opts = {
            float = {
              relative = 'editor',
              row = 0.3,
              col = 0.25,
              width = 0.5,
              height = 0.4,
              border = 'single',
            },
            horizontal = { location = 'rightbelow', split_ratio = 0.3 },
            vertical = { location = 'rightbelow', split_ratio = 0.5 },
          },
        },
        behavior = {
          autoclose_on_quit = {
            enabled = false,
            confirm = true,
          },
          close_on_exit = true,
          auto_insert = true,
        },
      }
    end,
  },
}
