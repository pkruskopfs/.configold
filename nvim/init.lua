require('plugins')
require('keymappings')
require('settings')
require('telescope-config')
require('telescope').load_extension('media_files')
local neogit = require('neogit')
neogit.setup {}
require 'options' 
