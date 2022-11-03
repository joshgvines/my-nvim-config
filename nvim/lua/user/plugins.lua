
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer use keep at top
    use "wbthomason/packer.nvim"

    -- Other
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"

    -- Treesitter
    use { 
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    -- Cmp Completion and LSP icons
    use "hrsh7th/nvim-cmp" 
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"

    -- Snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lspconfig"

    -- Colors
    use "folke/tokyonight.nvim"

    if packer_boostrap then
        require('packer').sync()
    end
end)

