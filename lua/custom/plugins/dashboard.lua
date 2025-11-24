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
          key = 'f',
          keymap = 'SPC s .',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'Telescope oldfiles',
        },
        {
          icon = '󰁯 ',
          desc = 'Open last session',
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
