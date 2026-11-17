require"source.globals"

function love.resize(x, y) Push:resize(x, y) end -- Resize fixed resolution. 

function love.load()
    SceneManager:load()
end

function love.update(dt)
    dt = dt * TimeScale -- Set timescale.

    SceneManager:update(dt)
    Debug:update()
end

function love.draw()
    Push:start()

    -- Draw static BG color:
    love.graphics.setColor(love.math.colorFromBytes(50, 0, 230))
    love.graphics.rectangle("fill", 0, 0, Push:getWidth(), Push:getHeight())

    SceneManager:draw()
    Debug:draw()

    Push:finish()
end

function love.keypressed(k)
    if k == "return" and love.keyboard.isDown("lalt") then Push:switchFullscreen() end -- Fullscreen.

    SceneManager:keypressed(k)
    Debug:keypressed(k)
end