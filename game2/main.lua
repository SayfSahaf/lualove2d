--! file: main.lua
Object = require 'libraries/classic'
Circle = require 'objects/circle'
HyperCircle = require 'objects/hypercircle'

function love.load()
    circle_instance = Circle(400, 300, 50)
    h_circle_instance = HyperCircle(400, 300, 50, 10, 120)
end

function love.update(dt)

end

function love.draw()
    h_circle_instance:draw()
end
