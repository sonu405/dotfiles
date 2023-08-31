local wezterm = require 'wezterm'

local module = {}

-- Fonts -- weights:- [Thin, ExtraLight, Light, Book, Regular, Medium, DemiBold, Bold, ExtraBold, Black, ExtraBlack,]

-- - DEJAVU SANS MONO
-- - HACK
-- - CASCADIA CODE
-- - JETBRAINS MONO
-- - UBUNTU MONO
-- - FIRA CODE
-- - Source Code Pro


function module.apply_to_config(config)
  -- padding on the edges outside the terminal window
  config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
  }
  -- font used and backup
  config.font = wezterm.font('Fira Code', { weight = 'Bold' })
  config.font = wezterm.font_with_fallback {
    'Source Code Pro',
    'Cascadia Code',
    'Jetbrains mono',
    'Ubuntu mono',
    'Hack',
    'DejaVu Sans Mono',
  }
end

return module
