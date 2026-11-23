-- Setup fixed resolution:
Push = require"libraries.push"
love.graphics.setDefaultFilter("nearest", "nearest") -- Setup texture filter mode.
Push:setupScreen(
    320, 240, -- Fixed resolution.
    1280, 720, -- Real resolution.
    {
        fullscreen = false,
        resizable = false,
    }
)

-- Global:
-- Managers:
SceneManager = require"source.managers.sceneManager"
AudioManager = require"source.managers.audioManager"
Debug = require"source.debug"

-- Parameters:
TimeScale = 1

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
    --love.graphics.rectangle("fill", 0, 0, Push:getWidth(), Push:getHeight())
    love.graphics.setColor(1, 1, 1, 1)

    SceneManager:draw()
    Debug:draw()

    Push:finish()
end

-- Keyboard:
function love.keypressed(key)
    if key == "return" and love.keyboard.isDown("lalt") then Push:switchFullscreen() end -- Fullscreen.

    SceneManager:keypressed(key)
    Debug:keypressed(key)
end

function love.keyreleased(key)
    SceneManager:keyreleased(key)
end

function love.textinput(text)
    SceneManager:textinput(text)
end

-- Mouse:
function love.mousepressed(x, y, button)
    x, y = Push:toGame(x, y) -- Set cursor position in the Push enviourment.
    if x and y then SceneManager:mousepressed(x, y, button) end
end

function love.mousereleased(x, y, button)
    x, y = Push:toGame(x, y) -- Set cursor position in the Push enviourment.
    if x and y then SceneManager:mousereleased(x, y, button) end
end

function love.mousemoved(x, y, dx, dy, istouch)
    x, y = Push:toGame(x, y) -- Set cursor position in the Push enviourment.
    if x and y then SceneManager:mousemoved(x, y, dx / Push._SCALE.x, dy / Push._SCALE.y, istouch) end
end

function love.wheelmoved(x, y)
    SceneManager:wheelmoved(x, y)
end

-- Joystick:
function love.joystickadded(joystick)
    SceneManager:joystickadded(joystick)
end

function love.joystickremoved(joystick)
    SceneManager:joystickremoved(joystick)
end

function love.gamepadpressed(joystick, button)
    SceneManager:gamepadpressed(joystick, button)
end

function love.gamepadreleased(joystick, button)
    SceneManager:gamepadreleased(joystick, button)
end

function love.gamepadaxis(joystick, axis, value)
    SceneManager:gamepadaxis(joystick, axis, value)
end

-- Window:
function love.focus(focus)
    SceneManager:focus(focus)
end

function love.visible(visible)
    SceneManager:visible(visible)
end

function love.resize(x, y)
    Push:resize(x, y) -- Resize fixed resolution. 
    SceneManager:resize(x, y)
end

function love.quit() -- Quit event.
    SceneManager:quit()
end