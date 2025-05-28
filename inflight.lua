--[[
 * Copyright (C) Rotorflight Project
 *
 * License GPLv3: https://www.gnu.org/licenses/gpl-3.0.en.html
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * Note: Some icons have been sourced from https://www.flaticon.com/
]]--

local telemetry = rfsuite.tasks.telemetry

local layout = {
    cols = 3,
    rows = 3,
    padding = 4
}

local boxes = {
    {col = 1, row = 1, colspan = 3,
        type = "batteryadvanced", source = "fuel",
        gaugemin = 0, gaugemax = 100,
        gaugebgcolor = "black", gaugeorientation = "horizontal", gaugebelowtitle = true, gaugecolor = "green",
        unit = "%", color = "white", valuealign = "centered", transform = "floor"
    },
    {col = 1, row = 2, type = "flighttime", title = "Timer", valuepaddingbottom = 10, titlepos = "bottom", bgcolor = "black"},
    {col = 1, row = 3, type = "telemetry", source = "current", title = "Current", unit = "A", titlepos = "bottom", bgcolor = "black", transform = "floor"},
    {col = 2, row = 2, type = "telemetry", source = "rpm", title = "RPM", unit = "rpm", titlepos = "bottom", bgcolor = "black", transform = "floor"},
    {col = 2, row = 3, type = "telemetry", source = "temp_esc", title = "ESC Temp", unit = "°C", titlepos = "bottom", bgcolor = "black", transform = "floor"},
    {col = 3, row = 2, type = "telemetry", source = "throttle_percent", title = "Throttle %", unit = "%", bgcolor = "black", titlepos = "bottom", transform = "floor"},
    {col = 3, row = 3, type = "telemetry", source = "altitude", title = "Altitude", unit = "ft", titlepos = "bottom", bgcolor = "black", transform = "floor"}
}

local function wakeup()
    --rfsuite.utils.log("wakeup inflight", "info")
end

local function event(widget, category, code)
    --rfsuite.utils.log("Event triggered: " .. category .. " - " .. code, "info")
end     

local function paint()
    --rfsuite.utils.log("paint inflight", "info")
end

local function screenErrorOverlay(message)
    rfsuite.utils.screenErrorOverlay(message)
end

return {
    layout = layout,
    boxes = boxes,
    wakeup = wakeup,
    event = event,
    paint = paint,
    screenErrorOverlay = screenErrorOverlay,
    overlayMessage = nil,
}