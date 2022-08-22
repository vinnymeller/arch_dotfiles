-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- catpuccin for my beautiful themes
  use { "catppuccin/nvim", as = "catppuccin" }
  -- nvim-tree for file explorer
  use { 'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, tag = 'nightly' }
  -- copilot ... is copilot
  use { 'github/copilot.vim' }
  -- nvim-lspconfig for language server protocol help
  use { 'neovim/nvim-lspconfig' }
  -- completion & language servers
  use {'neoclide/coc.nvim', branch = 'release'}
end)
