-- :help options
local options = {
clipboard = "unnamedplus",  -- allows neovim to access the clipboard
fileencoding = "utf-8",
hlsearch = true,
splitbelow = true,
splitright = true,
cursorline = true,
number = true,
updatetime = 300,
relativenumber = false,
smartindent = true, 
tabstop = 2,
guifont = "JetBrainsMono Nerd Font:h16"
}
 for k,v in pairs(options) do
	 vim.opt[k] = v
 end
