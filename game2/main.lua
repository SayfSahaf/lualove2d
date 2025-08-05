--! file: main.lua
Object = require 'libraries/classic'
Test = require 'objects/Test'

function love.load()
    test_instance = Test()
end

function love.update(dt)

end

function love.draw()
    love.graphics.circle('line', love.math.random(0, 800), love.math.random(0, 600), 100)
end
