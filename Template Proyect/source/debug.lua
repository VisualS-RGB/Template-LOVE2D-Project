local debug = {
    debugMenu = false,

    text = "",

    leftTexts = {},
    rightTexts = {},
}

local padding = 3
local textYsize = 14

function debug:update()
    if GameReleased or not self.debugMenu then return end

    -- Left column:
    self.leftTexts = {
        "Debug Panel UwU",
        "FPS: " .. tostring(love.timer.getFPS()),
        "Text: " ..tostring(self.text),
        "U can print data here ;)",
    }

    -- Right column:
    self.rightTexts = {
        -- Insert texts here:
    }
end

function debug:draw()
    if GameReleased or not self.debugMenu then return end
   
    love.graphics.setColor(1, 1, 1, 1)

    -- Print data:
    -- Left:
    for i, text in ipairs(self.leftTexts) do
        love.graphics.print(text, padding, padding + textYsize * (i - 1))
    end

    -- Right:
    for i, text in ipairs(self.rightTexts) do
        local textWidth = love.graphics.getFont():getWidth(text)
        love.graphics.print(
            text,
            Push:getWidth() - textWidth - padding,
            padding + textYsize * (i - 1)
        )
    end
end

function debug:keypressed(k)
    if GameReleased then return end

    if k == "tab" then
        self.debugMenu = not self.debugMenu
    end
end

return debug