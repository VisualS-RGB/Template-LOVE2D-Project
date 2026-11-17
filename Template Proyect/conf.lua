GameReleased = false -- If the game is ready, set this var on true, it disable all Debug tools.

function love.conf(t)
    t.identity = "Nil" -- Save file directory.
    t.console = not GameReleased

    t.window.title = "Template Proyect"
    t.window.icon = nil
    t.window.vsync = 1
end