local scenesPath = "source.scenes."

local sceneManager = {
    scenes = {
        -- Game scenes:
        TemplateScene = require(scenesPath .. "templateScene"),
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

-- Keyboard:
function sceneManager:keypressed(k)
    if self.sceneSelected and self.sceneSelected.keypressed then self.sceneSelected:keypressed(k) end
end

function sceneManager:keyreleased(k)
    if self.sceneSelected and self.sceneSelected.keyreleased then self.sceneSelected:keyreleased(k) end
end

function sceneManager:textinput(text)
    if self.sceneSelected and self.sceneSelected.textinput then self.sceneSelected:textinput(text) end
end

-- Mouse:
function sceneManager:mousepressed(x, y, button)
    if self.sceneSelected and self.sceneSelected.mousepressed then self.sceneSelected:mousepressed(x, y, button) end
end

function sceneManager:mousereleased(x, y, button)
    if self.sceneSelected and self.sceneSelected.mousereleased then self.sceneSelected:mousereleased(x, y, button) end
end

function sceneManager:mousemoved(x, y, dx, dy, istouch)
    if self.sceneSelected and self.sceneSelected.mousemoved then self.sceneSelected:mousemoved(x, y, dx, dy, istouch) end
end

function sceneManager:wheelmoved(x, y)
    if self.sceneSelected and self.sceneSelected.wheelmoved then self.sceneSelected:wheelmoved(x, y) end
end

-- Joystick:
function sceneManager:joystickadded(joystick)
    if self.sceneSelected and self.sceneSelected.joystickadded then self.sceneSelected:joystickadded(joystick) end
end

function sceneManager:joystickremoved(joystick)
    if self.sceneSelected and self.sceneSelected.joystickremoved then self.sceneSelected:joystickremoved(joystick) end
end

function sceneManager:gamepadpressed(joystick, button)
    if self.sceneSelected and self.sceneSelected.gamepadpressed then self.sceneSelected:gamepadpressed(joystick, button) end
end

function sceneManager:gamepadreleased(joystick, button)
    if self.sceneSelected and self.sceneSelected.gamepadreleased then self.sceneSelected:gamepadreleased(joystick, button) end
end

function sceneManager:gamepadaxis(joystick, axis, value)
    if self.sceneSelected and self.sceneSelected.gamepadaxis then self.sceneSelected:gamepadaxis(joystick, axis, value) end
end

-- Window:
function sceneManager:focus(focus)
    if self.sceneSelected and self.sceneSelected.focus then self.sceneSelected:focus(focus) end
end

function sceneManager:visible(visible)
    if self.sceneSelected and self.sceneSelected.visible then self.sceneSelected:visible(visible) end
end

function sceneManager:resize(x, y)
    if self.sceneSelected and self.sceneSelected.resize then self.sceneSelected:resize(x, y) end
end

function sceneManager:quit() -- Quit event.
    if self.sceneSelected and self.sceneSelected.quit then self.sceneSelected:quit() end
end

return sceneManager