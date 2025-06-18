local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.automatically_reload_config = true

--Startup window size
config.initial_rows = 35
config.initial_cols = 120

--Appearance
--Title Bar

--No Titlebar config
--config.window_decorations = "RESIZE"
--config.enable_tab_bar = false

--Titlebar with integrated tabs/buttons
config.window_decorations = "RESIZE | INTEGRATED_BUTTONS"
config.enable_tab_bar = true

config.use_fancy_tab_bar = true
config.window_frame = {
    --Back and white config
	--active_titlebar_bg = '#000000',
	--inactive_titlebar_bg = '#000000',
    active_titlebar_bg = '#1e1e2e',
    inactive_titlebar_bg = '#1e1e2e',
	font_size = 14.0,
}
config.window_padding = {
    top = '20'
}

--Window behavior
config.window_close_confirmation = 'NeverPrompt'

--Color Scheme
--config.color_scheme = 'Dracula+'
config.color_scheme = 'catppuccin-mocha'

--Background and Text
config.colors = {
    tab_bar = { 
        active_tab = {
            fg_color = '#b4befe',
            bg_color = '#1e1e2e'
        },
        inactive_tab = {
            fg_color = '#7f849c',
            bg_color = '#1e1e2e'
        },
        inactive_tab_hover = {
            fg_color = '#89b4fa',
            bg_color = '#1e1e2e'
        },
        new_tab = {
            fg_color = '#7f849c',
            bg_color = '#1e1e2e'
        },
        new_tab_hover = {
            fg_color = '#89b4fa',
            bg_color = '#1e1e2e'
        }
    },
    background = '#1e1e2e'
}
--Black and White Config
--[[config.colors = {
	tab_bar = {
		active_tab = {
			fg_color = '#FFFFFF',
			bg_color = '#000000'
		},
		inactive_tab = {
			fg_color = '#949494',
			bg_color = '#000000'
		},
		new_tab = {
			fg_color = '#FFFFFF',
			bg_color = '#000000'
		}
	},
	background = 'black',
	foreground = 'white'
}]]--

--Fonts
config.font = wezterm.font ('Fira Code', { weight = 'Medium'} )
config.font_size = 12
config.line_height=1.3

return config
