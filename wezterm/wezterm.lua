-- Pull in the wezterm API
local wezterm = require 'wezterm'
local colorscheme = require 'colorscheme'
local window = require 'window'
local keymaps = require 'keymaps'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- importing code
colorscheme.apply_to_config(config)
window.apply_to_config(config)
keymaps.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config
