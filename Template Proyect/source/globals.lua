love.graphics.setDefaultFilter("nearest", "nearest") -- Setup texture filter mode.

-- Global libraries:
Push = require"libraries.push" -- Resolution configuration.

-- Setup push:
Push:setupScreen(
    320, 240, -- Fixed resolution.
    1280, 720, -- Real resolution.
    {
        fullscreen = false,
        resizable = false
    }
)

Lem = require"libraries.lem" -- Event buses.
Anim8 = require"libraries.anim8" -- Compatibility with SpriteSheets animations.
Gamera = require"libraries.gamera" -- Cameras.
Windfield = require"libraries.windfield" -- Physics System.

-- Global managers:
SceneManager = require"source.managers.sceneManager"
AudioManager = require"source.managers.audioManager"
Debug = require"source.debug"

-- Global parameters:
TimeScale = 1

-- Init:
MainEventBus = Lem:new()