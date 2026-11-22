love.graphics.setDefaultFilter("nearest", "nearest") -- Setup texture filter mode.

-- Setup push:
Push = require"libraries.push" -- Resolution configuration.

Push:setupScreen(
    320, 240, -- Fixed resolution.
    1280, 720, -- Real resolution.
    {
        fullscreen = false,
        resizable = false
    }
)

-- Managers:
SceneManager = require"source.managers.sceneManager"
AudioManager = require"source.managers.audioManager"
Debug = require"source.debug"

-- Parameters:
TimeScale = 1