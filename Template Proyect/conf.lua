GameReleased = false -- If the game is ready, set this var on true, it disable all Debug tools.

-- Fix Windows display scaling resolution bug:
local ffi = require("ffi")
if ffi.os == "Windows" then
    ffi.cdef[[ int SetProcessDPIAware(void); ]]
    pcall(function() ffi.C.SetProcessDPIAware() end)
end

function love.conf(t)
    t.identity = "Nil" -- Save file directory.
    t.console = not GameReleased

    t.window.title = "Template Proyect"
    t.window.icon = nil
    t.window.width = 1600
    t.window.height = 900
    t.window.highdpi = true
    t.window.usedpiscale = false
    t.window.vsync = 1
end