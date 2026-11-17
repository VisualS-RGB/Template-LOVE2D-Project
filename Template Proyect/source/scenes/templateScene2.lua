local scene = {}

function scene:update(dt)
    --SceneManager:LoadScene(SceneManager.scenes.test) LOAD SCENES
end

function scene:draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print("Scene manager system ;)", 40, 40, 0, 1)
    love.graphics.print("Scene2", 0, 200, 0, 1)
end

return scene