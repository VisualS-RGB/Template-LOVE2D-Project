local Colors = require"libraries.colors"

local scene = {}

function scene:load()
end

function scene:update(dt)
end

function scene:draw()
    love.graphics.setColor(Colors.pastelOrange)
    love.graphics.printf("Empty World...", 0, Push:getHeight() / 2 - 10, Push:getWidth(), "center")
    love.graphics.circle("fill", 50, 50, 30)
end

return scene