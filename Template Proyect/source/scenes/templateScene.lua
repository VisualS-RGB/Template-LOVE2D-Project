local Colors = require"libraries.colors"

local scene = {}
local joysticks = {}

function scene:load()
end

function scene:update(dt)
end

function scene:draw()
    love.graphics.printf("Empty World...", 0, Push:getHeight() / 2 - 10, Push:getWidth(), "center")
end

return scene