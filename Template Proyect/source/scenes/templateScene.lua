local scene = {}

local pause = false

function scene:load()
end

function scene:update(dt)
    if love.keyboard.isDown("space") then
        SceneManager:LoadScene(SceneManager.scenes.TemplateScene2)
    end
end

function scene:draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print("Press space...", 100, 100, 0, 1)
    love.graphics.print("Scene1", 0, 200, 0, 1)
end

function scene:keypressed(k)
    if k == ";" then
        assert(false, "Error Log uwu")
    end
end

return scene