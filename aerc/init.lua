--[[
 * Copyright (C) Rotorflight Project
 *
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
 
 * Note.  Some icons have been sourced from https://www.flaticon.com/
 * 
]] --
-- Theme initialization table
local init = {
    name = "aerc",
    preflight = "preflight.lua",
    inflight = "inflight.lua", 
    postflight = "postflight.lua",
    configure = "configure.lua",
    wakeup = 0.5,
    wakeup_bg = 60,
    standalone = false,
}

return init