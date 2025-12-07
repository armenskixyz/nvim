local header = [[

                        __     |\_/,|   (`\      
                        |  \ _.|o o |_   ) )     
      _______  __     __ \▓▓-(((_-_(((_-----     
     |       \|  \   /  \  \      \    \         
     | ▓▓▓▓▓▓▓\\▓▓\ /  ▓▓ ▓▓ ▓▓▓▓▓▓\▓▓▓▓\        
     | ▓▓  | ▓▓ \▓▓\  ▓▓| ▓▓ ▓▓ | ▓▓ | ▓▓        
     | ▓▓  | ▓▓  \▓▓ ▓▓ | ▓▓ ▓▓ | ▓▓ | ▓▓__      
     | ▓▓  | ▓▓   \▓▓▓  | ▓▓ ▓▓ | ▓▓ | ▓▓  \     
      \▓▓   \▓▓    \▓    \▓▓\▓▓  \▓▓  \▓▓\▓▓     
                                                 
]]

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {
    theme = 'doom',
    config = {
      header = vim.split(header, '\n'),
      header_hl = 'Number',
      center = {
        {
          icon = ' ',
          icon_hl = 'Title',
          desc = 'Find File',
          desc_hl = 'String',
          key = 'b',
          keymap = 'SPC s f',
          key_hl = 'Number',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'Telescope find_files',
        },
        {
          icon = ' ',
          desc = 'Find Recent Files',
          desc_hl = 'String',
          key = 'f',
          icon_hl = 'Title',
          keymap = 'SPC s .',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'Telescope oldfiles',
        },
        {
          icon = ' ',
          icon_hl = 'Title',
          desc = 'Open new buffer',
          desc_hl = 'String',
          key = 'v',
          key_format = ' %s',
          action = 'e new_buffer',
        },
        {
          icon = '󰁯 ',
          icon_hl = 'Title',
          desc = 'Open last session',
          desc_hl = 'String',
          key = 'g',
          key_format = ' %s',
          action = 'lua require("persistence").load()',
        },
      },
      footer = {}, --your footer
    },
  },
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
