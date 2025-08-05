--! file: shape.lua

local Object = require "classic"

local Shape = Object:extend()

function Shape:new(x, y)
    self.x = x
    self.y = y
    self.speed = 75
end

function Shape:update(dt)
    self.x = self.x + self.speed * dt
end

return Shape
