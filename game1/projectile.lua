--! file: projectile.lua

local Object = require "classic"

Projectile = Object:extend()

function Projectile:new(parent_x_position)
    self.sprite = love.graphics.newImage("projectile.png")
    self.x = parent_x_position + 64
    self.y = 100
    self.width = self.sprite:getWidth()
    self.height = self.sprite:getHeight()
end

function Projectile:update(dt)
    self.y = self.y + 400 * dt
end

function Projectile:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end
