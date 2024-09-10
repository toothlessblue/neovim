-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/toothless/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/home/toothless/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/home/toothless/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/home/toothless/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/toothless/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-save.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14auto-save\frequire\0" },
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/Pocco81/auto-save.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\nù\3\0\0\6\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\19format_on_save\1\0\1\15lsp_format\rfallback\15formatters\14prettierd\1\0\1\14prettierd\0\benv\1\0\1\benv\0\1\0\1\29PRETTIERD_DEFAULT_CONFIG0/home/toothless/.config/nvim/prettierd.json\21formatters_by_ft\1\0\3\19format_on_save\0\15formatters\0\21formatters_by_ft\0\15javascript\1\2\0\0\14prettierd\15typescript\1\0\2\15typescript\0\15javascript\0\1\2\0\0\14prettierd\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nv\0\0\3\1\4\0\14-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\5Ä-\0\0\0009\0\1\0005\2\2\0B\0\2\1X\0\3Ä-\0\0\0009\0\3\0B\0\1\1K\0\1\0\0¿\rcomplete\1\0\1\rbehavior\vinsert\21select_prev_item\fvisiblev\0\0\3\1\4\0\14-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\5Ä-\0\0\0009\0\1\0005\2\2\0B\0\2\1X\0\3Ä-\0\0\0009\0\3\0B\0\1\1K\0\1\0\0¿\rcomplete\1\0\1\rbehavior\vinsert\21select_next_item\fvisibleC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireŒ\4\1\0\b\0\31\00056\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0B\1\2\0019\1\5\0005\3\b\0004\4\3\0005\5\6\0>\5\1\0045\5\a\0>\5\2\4=\4\t\0035\4\r\0009\5\n\0009\5\v\0055\a\f\0B\5\2\2=\5\14\0049\5\n\0009\5\15\5B\5\1\2=\5\16\0049\5\n\0009\5\17\0055\a\18\0B\5\2\2=\5\19\0049\5\n\0009\5\20\0055\a\21\0B\5\2\2=\5\22\0049\5\n\0003\a\23\0B\5\2\2=\5\24\0049\5\n\0003\a\25\0B\5\2\2=\5\26\4=\4\n\0035\4\28\0003\5\27\0=\5\29\4=\4\30\3B\1\2\0012\0\0ÄK\0\1\0\fsnippet\vexpand\1\0\1\vexpand\0\0\n<C-n>\0\n<C-p>\0\v<Down>\1\0\1\rbehavior\vselect\21select_next_item\t<Up>\1\0\1\rbehavior\vselect\21select_prev_item\n<C-e>\nabort\n<C-y>\1\0\6\t<Up>\0\n<C-n>\0\n<C-e>\0\n<C-p>\0\n<C-y>\0\v<Down>\0\1\0\1\vselect\1\fconfirm\fmapping\fsources\1\0\3\fsnippet\0\fmapping\0\fsources\0\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\nsetup\1\0\1\npaths ~/.config/nvim/lua/snippets\tload\29luasnip.loaders.from_lua\bcmp\frequire\0" },
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/dracula/vim"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/home/toothless/.local/share/nvim/site/pack/packer/start/vim-glsl",
    url = "https://github.com/tikhomirov/vim-glsl"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14auto-save\frequire\0", "config", "auto-save.nvim")
time([[Config for auto-save.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nv\0\0\3\1\4\0\14-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\5Ä-\0\0\0009\0\1\0005\2\2\0B\0\2\1X\0\3Ä-\0\0\0009\0\3\0B\0\1\1K\0\1\0\0¿\rcomplete\1\0\1\rbehavior\vinsert\21select_prev_item\fvisiblev\0\0\3\1\4\0\14-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\5Ä-\0\0\0009\0\1\0005\2\2\0B\0\2\1X\0\3Ä-\0\0\0009\0\3\0B\0\1\1K\0\1\0\0¿\rcomplete\1\0\1\rbehavior\vinsert\21select_next_item\fvisibleC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireŒ\4\1\0\b\0\31\00056\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0B\1\2\0019\1\5\0005\3\b\0004\4\3\0005\5\6\0>\5\1\0045\5\a\0>\5\2\4=\4\t\0035\4\r\0009\5\n\0009\5\v\0055\a\f\0B\5\2\2=\5\14\0049\5\n\0009\5\15\5B\5\1\2=\5\16\0049\5\n\0009\5\17\0055\a\18\0B\5\2\2=\5\19\0049\5\n\0009\5\20\0055\a\21\0B\5\2\2=\5\22\0049\5\n\0003\a\23\0B\5\2\2=\5\24\0049\5\n\0003\a\25\0B\5\2\2=\5\26\4=\4\n\0035\4\28\0003\5\27\0=\5\29\4=\4\30\3B\1\2\0012\0\0ÄK\0\1\0\fsnippet\vexpand\1\0\1\vexpand\0\0\n<C-n>\0\n<C-p>\0\v<Down>\1\0\1\rbehavior\vselect\21select_next_item\t<Up>\1\0\1\rbehavior\vselect\21select_prev_item\n<C-e>\nabort\n<C-y>\1\0\6\t<Up>\0\n<C-n>\0\n<C-e>\0\n<C-p>\0\n<C-y>\0\v<Down>\0\1\0\1\vselect\1\fconfirm\fmapping\fsources\1\0\3\fsnippet\0\fmapping\0\fsources\0\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\nsetup\1\0\1\npaths ~/.config/nvim/lua/snippets\tload\29luasnip.loaders.from_lua\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\nù\3\0\0\6\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\19format_on_save\1\0\1\15lsp_format\rfallback\15formatters\14prettierd\1\0\1\14prettierd\0\benv\1\0\1\benv\0\1\0\1\29PRETTIERD_DEFAULT_CONFIG0/home/toothless/.config/nvim/prettierd.json\21formatters_by_ft\1\0\3\19format_on_save\0\15formatters\0\21formatters_by_ft\0\15javascript\1\2\0\0\14prettierd\15typescript\1\0\2\15typescript\0\15javascript\0\1\2\0\0\14prettierd\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
