--! file: main.lua
Object = require 'libraries/classic'
Circle = require 'objects/circle'
HyperCircle = require 'objects/hypercircle'
Input = require 'libraries/input'

function love.load()
    input = Input()
    --input:bind('pageup', 'print')
    input:bind('mouse1', 'test')
    count = 0
end

function love.update(dt)
    if input:pressed('test') then
        print('left-click')
        count = count + 1
        print(count)
    end
    if input:down('test', 0.01) then print('mouse down') end
end

function love.draw()
end
