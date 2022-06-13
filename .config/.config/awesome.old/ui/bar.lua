local gfs = require("gears.filesystem") 
local gears = require("gears") 
local awful = require("awful") 
local wibox = require("wibox") 
local beautiful = require("beautiful") 
local dpi = beautiful.xresources.apply_dpi 

local rubato = require("rubato")

screen.connect_signal("request::desktop_decoration", function(s) 
  awful.tag({ "1", "2", "3", "4", "5" }, s, awful.layout.layouts[2])

  local laybuttons = {
    awful.button({ }, 1, function () awful.layout.inc( 1) end),
    awful.button({ }, 2, function () awful.layout.inc(-1) end), 
    awful.button({ }, 3, function () awful.layout.inc(-1) end),
    awful.button({ }, 4, function () awful.layout.inc(-1) end),
    awful.button({ }, 5, function () awful.layout.inc(-1) end),
  }

  local layoutbox = wibox.widget {
    {
      {
        buttons = laybuttons,
        widget = awful.widget.layoutbox,
      },
      margins = { top = dpi(6), bottom = dpi(6), right = dpi(4), left = dpi(4) },
      bg = beautiful.bar,
      widget = wibox.container.background,
    },
  }

  local tasklist = awful.widget.tasklist {
    screen = s,
    filter = awful.widget.tasklist.filter.currenttags,
    layout = {
      spacing = dpi(10),
      layout = wibox.layout.fixed.horizontal,
    },
    widget_template = {
      {
        {
          id = "icon_role",
          widget = wibox.widget.imagebox,
        },
        widget = wibox.container.margin,
      },
      forced_width = dpi(40),
      shape = function(cr,w,h) gears.shape.rounded_rect(cr,w,h,5) end,
      bg = beautiful.bar,
      widget = wibox.container.background,
      },
  }

  local task = wibox.widget {
    {
      {
        tasklist,
        layout = wibox.layout.align.horizontal,
      },
      margins = {left = dpi(6), right = dpi(6)},
      widget = wibox.container.margin,
    },
    forced_height = dpi(40),
    shape = function(cr,w,h) gears.shape.rounded_rect(cr,w,h,5) end,
    bg = beautiful.bar .. "00",
    widget = wibox.container.background,
  }

  local taglist_buttons = gears.table.join(
    awful.button({ }, 1, function(t) t:view_only() end),
    awful.button({ modkey }, 1, function(t) 
      if client.focus then 
        client.focus:move_to_tag(t) 
      end
    end),
    awful.button({ }, 3, awful.tag.viewtoggle),
    awful.button({ modkey }, 3, function(t) 
      if client.focus then
        client.focus:toggle_tag(t) 
      end
    end),
    awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
    awful.button({ }, 5, function(t) awful.tag.viewnext(t.screen) end) 
  ) 

  local tags = awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all,
    layout = {
      spacing = dpi(0),
      layout = wibox.layout.fixed.horizontal,
    },
    style = {
      font = "JetBrainsMono Nerd Font Mono 7",
    },
    buttons = taglist_buttons,
    --[[widget_template = {
      {
        {
          {
            id = 'text_role',
            forced_width = dpi(25),
            align = 'center',
            widget = wibox.widget.textbox,
          },
          layout = wibox.layout.align.horizontal,
          },
        margins = dpi(4),
        widget = wibox.container.margin,
      },
      id = 'bg'
      widget = wibox.container.background,
    },--]]
    
  }

  local tag = wibox.widget {
    {
      {
        tags,
        layout = wibox.layout.fixed.horizontal,
      },
      widget = wibox.container.margin,
    },
    shape = function(cr,w,h) gears.shape.ronded_rect(cr,w,h,5) end,
    bg = beautiful.bar,
    widget = wibox.container.background,
  }

  s.bar = awful.wibar {
    position = 'bottom',
    width = s.geometry.width,
    height = dpi(60),
    screen = s,
    bg = beautiful.bar .. "00",
    visible = true,
  }

  s.bar:setup {
    {
      {
        tag,
        layout = wibox.layout.fixed.horizontal,
      },
      --nil,
      {
      
      },
      layout = wibox.layout.align.horizontal,
    },
    margins = dpi(8),
    widget = wibox.container.martgin,
  }

end)
