--! file: main.lua
Object = require 'libraries/classic'
Circle = require 'objects/circle'
HyperCircle = require 'objects/hypercircle'
Input = require 'libraries/input'

function love.load()
    circle_instance = Circle(400, 300, 50)
    h_circle_instance = HyperCircle(400, 300, 50, 10, 120)

    input = Input()
    input:bind('mouse1', 'print')
end

function love.update(dt)
    if input:pressed('print') then print('pressed') end
    if input:released('print') then print('released') end
    if input:down('print') then print('down') end
end

function love.draw()
end
