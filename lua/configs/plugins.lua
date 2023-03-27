vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function (use)
  use 'wbthomason/packer.nvim'
  
  use "kyazdani42/nvim-web-devicons"

  use { 'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = function()
      require('lualine').setup()
  end, }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  use 'powerman/vim-plugin-ruscmd'

  use 'davidgranstrom/nvim-markdown-preview'

  use 'majutsushi/tagbar'

  use 'rstacruz/vim-closer'
end)
