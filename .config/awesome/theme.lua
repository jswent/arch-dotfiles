---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "JetBrainsMono Nerd Font Mono 7"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.taglist_fg_focus  = "#00CCFF"
theme.tasklist_bg_focus = "#222222"
theme.tasklist_fg_focus = "#00CCFF"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(8)
theme.border_width  = dpi(2)
theme.border_normal = "#3D7EA2"
theme.border_focus  = "#3EA4DD"
theme.border_marked = "#91231c"

theme.bar = "#3D7EA2"
theme.bar_alt = "#212331"

theme.titlebar_bg_focus = "#1c252acc"
theme.titlebar_bg_normal = "#1c252acc"
theme.titlebar_bg_focus = theme.bg_focus
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_fg_focus = theme.fg_focus

theme.menu_submenu_icon                         = "~/.config/awesome/icons/submenu.png"
theme.awesome_icon                              = "~/.config/awesome/icons/awesome.png"
theme.layout_tile                               = "~/.config/awesome/icons/tile.png"
theme.layout_tileleft                           = "~/.config/awesome/icons/tileleft.png"
theme.layout_tilebottom                         = "~/.config/awesome/icons/tilebottom.png"
theme.layout_tiletop                            = "~/.config/awesome/icons/tiletop.png"
theme.layout_fairv                              = "~/.config/awesome/icons/fairv.png"
theme.layout_fairh                              = "~/.config/awesome/icons/fairh.png"
theme.layout_spiral                             = "~/.config/awesome/icons/spiral.png"
theme.layout_dwindle                            = "~/.config/awesome/icons/dwindle.png"
theme.layout_max                                = "~/.config/awesome/icons/max.png"
theme.layout_fullscreen                         = "~/.config/awesome/icons/fullscreen.png"
theme.layout_magnifier                          = "~/.config/awesome/icons/magnifier.png"
theme.layout_floating                           = "~/.config/awesome/icons/floating.png"
theme.widget_ac                                 = "~/.config/awesome/icons/ac.png"
theme.widget_mem                                = "~/.config/awesome/icons/mem.png"
theme.widget_cpu                                = "~/.config/awesome/icons/cpu.png"
theme.widget_temp                               = "~/.config/awesome/icons/temp.png"
theme.widget_net                                = "~/.config/awesome/icons/net.png"
theme.widget_hdd                                = "~/.config/awesome/icons/hdd.png"
theme.widget_music                              = "~/.config/awesome/icons/note.png"
theme.widget_music_on                           = "~/.config/awesome/icons/note.png"
theme.widget_music_pause                        = "~/.config/awesome/icons/pause.png"
theme.widget_music_stop                         = "~/.config/awesome/icons/stop.png"
theme.widget_vol                                = "~/.config/awesome/icons/vol.png"
theme.widget_vol_low                            = "~/.config/awesome/icons/vol_low.png"
theme.widget_vol_no                             = "~/.config/awesome/icons/vol_no.png"
theme.widget_vol_mute                           = "~/.config/awesome/icons/vol_mute.png"
theme.widget_mail                               = "~/.config/awesome/icons/mail.png"
theme.widget_mail_on                            = "~/.config/awesome/icons/mail_on.png"
theme.widget_task                               = "~/.config/awesome/icons/task.png"
theme.widget_scissors                           = "~/.config/awesome/icons/scissors.png"
theme.widget_weather                            = "~/.config/awesome/icons/dish.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = false
theme.useless_gap                               = 6
theme.titlebar_close_button_focus               = "~/.config/awesome/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = "~/.config/awesome/icons/titlebar/close_normal.png"
--[[theme.titlebar_ontop_button_focus_active        = "~/.config/awesome/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = "~/.config/awesome/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = "~/.config/awesome/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = "~/.config/awesome/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = "~/.config/awesome/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = "~/.config/awesome/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = "~/.config/awesome/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = "~/.config/awesome/icons/titlebar/sticky_normal_inactive.png"--]]
theme.titlebar_floating_button_focus_active     = "~/.config/awesome/icons/titlebar/floating_focus.png"
theme.titlebar_floating_button_normal_active    = "~/.config/awesome/icons/titlebar/floating_normal.png"
theme.titlebar_floating_button_focus_inactive   = "~/.config/awesome/icons/titlebar/floating_focus.png"
theme.titlebar_floating_button_normal_inactive  = "~/.config/awesome/icons/titlebar/floating_normal.png"
--[[theme.titlebar_maximized_button_focus_active    = "~/.config/awesome/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = "~/.config/awesome/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/icons/titlebar/maximized_normal_inactive.png"--]]
theme.bg_systray                                = "#111111"
theme.clock_fontfg                              = "#8c8c8b"
theme.clock_font                                = "DejaVu Sans Mono Bold 9"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/home/jswent/.config/awesome/icons/arch64.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(90) 
theme.menu_border_width = dpi(3)
theme.menu_border_color = "#3EA4DD"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.wallpaper = "~/.config/awesome/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png" 
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Papirus"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
