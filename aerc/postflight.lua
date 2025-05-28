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
    rows = 4,
    padding = 4
}

local boxes = {
    {col = 1, row = 1, type = "craftname", bgcolor = "black"},
    {col = 1, row = 2, type = "flighttime", title = "Flight Duration", titlepos = "top", bgcolor = "black", color = "orange", valuepaddingtop = 10},
    {col = 1, row = 3, type = "totalflighttime", title = "Model Flight Duration", titlepos = "top", bgcolor = "black", color = "orange", valuepaddingtop = 10}, 
    {col = 1, row = 4, type = "flightcount", title = "Flights", titlepos = "top", bgcolor = "black", color = "orange", valuepaddingtop = 10},

    {col = 2, row = 1, type = "text", value = telemetry.getSensorStats('rpm').max, title = "RPM Max", unit = " rpm", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},
    {col = 2, row = 2, type = "text", value = telemetry.getSensorStats('temp_esc').max, title = "ESC Temp Max", unit = "°C", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},
    {col = 2, row = 3, type = "text", value = telemetry.getSensorStats('current').max, title = "Current Max", unit = "A", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},
    {col = 2, row = 4, type = "text", value = telemetry.getSensorStats('throttle_percent').max, title = "Throttle Max", unit = "%", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},

    {col = 3, row = 1, type = "text", value = telemetry.getSensorStats('fuel').min, title = "Battery Remaining", unit = "%", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},
    {col = 3, row = 2, type = "text", value = "-- / --", title = "V / VCell", titlepos = "top", bgcolor = "black", color = "orange", valuepaddingtop = 10},
    {col = 3, row = 3, type = "text", value = telemetry.getSensorStats('consumption').max, title = "Consumed mAh", unit = " mAh", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},
    {col = 3, row = 4, type = "text", value = telemetry.getSensorStats('altitude').max, title = "Altitude Max", unit = " ft", titlepos = "top", bgcolor = "black", color = "orange", transform="floor", valuepaddingtop = 10},
}

local function wakeup()end

local function event(widget, category, code) end

local function paint() end

local function screenErrorOverlay(message)
    rfsuite.utils.screenErrorOverlay(message)
end

return {
    layout = layout,
    boxes = boxes,
    wakeup = wakeup,
    event = event,
    paint = paint,
    overlayMessage = nil,
}
