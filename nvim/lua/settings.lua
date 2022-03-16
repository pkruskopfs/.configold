-- set Dracula colorscheme
vim.cmd[[colorscheme dracula]]
-- Autoreload sxhkd when XResources key mappings are updated
vim.api.nvim_command('autocmd BufWritePost *sxhkdrc !pkill -SIGUSR1 sxhkd; setsid sxhkd &') 
vim.api.nvim_command('autocmd BufWritePost plugins.lua source <afile> | PackerSync') 
