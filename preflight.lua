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

local layout = {
    cols = 6,
    rows = 8,
    padding = 4
}

local boxes = {
    {col = 1, row = 1, colspan = 2, rowspan = 2, type = "craftname", bgcolor = "black"},
    {col = 1, row = 3, colspan = 2, rowspan = 4, type = "modelimage", bgcolor = "black"},
    {col = 1, row = 7, rowspan = 2, type = "text", value = "timer", title = "Flight Duration", valuepaddingbottom = 10, titlepos = "bottom", bgcolor = "black"},
    {col = 2, row = 7, rowspan = 2, type = "flightcount", title = "Flights", valuepaddingbottom = 10, nosource = "-", titlepos = "bottom", bgcolor = "black"},
    {col = 3, row = 1, colspan = 4, rowspan = 2,
        type = "batteryadvanced", source = "fuel",
        gaugemin = 0, gaugemax = 100,
        gaugebgcolor = "black", gaugeorientation = "horizontal", gaugebelowtitle = true, gaugecolor = "green",
        unit = "%", color = "white", valuealign = "centered", transform="floor",
        thresholds = {
            { value = 0,   color = "red",    textcolor = "red" },
            { value = 10,  color = "red",    textcolor = "white" },
            { value = 30,  color = "orange", textcolor = "white" },
        },
    },
        {col = 3, row = 3, colspan = 2, rowspan = 3,
        type = "arcgauge", source = "bec_voltage", title = "BEC Voltage", titlepos = "bottom", bgcolor = "black",
        gaugemin = 3, gaugemax = 13,  decimals = 1,  
        unit = "V", color = "white", font = "FONT_STD",
        arcBgColor = "lightgrey", arcOffsetY = 4, arcThickness = 1, startAngle = 225,
        thresholds = {
            { value = 5.5, color = "red" },
            { value = 13, color = "green" },
        },
        alert = {
            threshold = 5.5,
            type = "low",
            configKey = "becAlertThreshold", -- Will be used later for model specific config, check with Rob
            sound = "low_voltage", -- Will be used for audible alerting later on, need to test
         },
    },
    {col = 3, row = 6, rowspan = 3, type = "armflags", title = "Arm Status", titlepos = "bottom", bgcolor = "black", armedcolor = "green", disarmedcolor = "red"},
    {col = 4, row = 6, rowspan = 3, type = "telemetry", source = "rssi", nosource = "-", title = "Link Quality", unit = "dB", titlepos = "bottom", valuefontsize = "FONT_STD", transform = "floor", bgcolor = "black"},
    {col = 5, row = 3, colspan = 2, rowspan = 3,
        type = "arcgauge", source = "temp_esc", title = "ESC Temp", titlepos = "bottom", bgcolor = "black",
        gaugemin = 0, gaugemax = 140,
        unit = "°C", font = "FONT_STD", transform = "floor", textoffsetx = 12,
        arcBgColor = "lightgrey", arcOffsetY = 4, arcThickness = 1, startAngle = 225, sweep = 270,
        thresholds = {
            { value = 70,  color = "green" },
            { value = 90,  color = "orange" },
            { value = 140, color = "red" }
        }
    },
    {col = 5, row = 6, rowspan = 3, type = "telemetry", source = "pid_profile", title = "PID Profile", nosource = "-", titlepos = "bottom", transform = "floor", bgcolor = "black", thresholds = {{ value = 1.5,  color = "blue" }, { value = 2.5,  color = "orange" }, { value = 6,  color = "green" }}},
    {col = 6, row = 6, rowspan = 3, type = "telemetry", source = "rate_profile", title = "Rate Profile", nosource = "-", titlepos = "bottom", transform = "floor", bgcolor = "black", thresholds = {{ value = 1.5,  color = "blue" }, { value = 2.5,  color = "orange" }, { value = 6,  color = "green" }}},
    }

local function wakeup()
    --rfsuite.utils.log("wakeup preflight", "info")
end

local function event(widget, category, code)
    --rfsuite.utils.log("Event triggered: " .. category .. " - " .. code, "info")
end    

local function paint()
    --rfsuite.utils.log("paint preflight", "info")
end

return {
    layout = layout,
    boxes = boxes,
    wakeup = wakeup,
    event = event,
    paint = paint,
}
