--! file: rectangle.lua

local Shape = require "shape"

local Rectangle = Shape:extend()

function Rectangle:new(x, y)
    Rectangle.super.new(self, x, y)
    self.width = math.random(10, 100)
    self.height = math.random(10, 100)
end

function Rectangle:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end

return Rectangle
