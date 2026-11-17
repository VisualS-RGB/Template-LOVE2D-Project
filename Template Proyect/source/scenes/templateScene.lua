local scene = {}

local pause = false

function scene:load()
end

function scene:update(dt)
end

function scene:draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print("Empty World...", Push:getWidth() / 2 - 50, Push:getHeight() / 2 - 10)
end

function scene:keypressed(k)
end

return scene