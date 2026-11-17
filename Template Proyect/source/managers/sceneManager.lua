local scenesPath = "source.scenes."

local sceneManager = {
    scenes = {
        -- Game scenes:
        TemplateScene = require(scenesPath .. "templateScene"),
        TemplateScene2 = require(scenesPath .. "templateScene2"),
    },
}

sceneManager.sceneSelected = sceneManager.scenes.TemplateScene -- Starter scene.

function sceneManager:LoadScene(_scene)
    self.sceneSelected = _scene
    love.load()
end

function sceneManager:load()
    if self.sceneSelected and self.sceneSelected.load then self.sceneSelected:load() end
end

function sceneManager:update(dt)
    if self.sceneSelected and self.sceneSelected.update then self.sceneSelected:update(dt) end
end

function sceneManager:draw()
    if self.sceneSelected and self.sceneSelected.draw then self.sceneSelected:draw() end
end

function sceneManager:keypressed(k)
    if self.sceneSelected and self.sceneSelected.keypressed then self.sceneSelected:keypressed(k) end
end

return sceneManager