--  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
 if fn.empty(fn.glob(install_path)) > 0 then
  execute ('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true}
  -- You can alias plugin names
  use 'nvim-lua/plenary.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'junegunn/fzf.vim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use { 
      'folke/which-key.nvim',
      config = function()
	      require('whichkey').setup()
      end,
      }
  use {
      'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
-- Neogit
use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
-- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
