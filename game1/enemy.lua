--! file: enemy.lua

local Object = require "classic"

Enemy = Object:extend()
local switchDirection = false

function Enemy:new()
    self.sprite = love.graphics.newImage("enemy.png")
    self.x = 300
    self.y = 650
    self.width = self.sprite:getWidth()
    self.height = self.sprite:getHeight()
end

function Enemy:update(dt)
    if self.x >= 1072 then
        switchDirection = true
    end
    if self.x <= 0 then
        switchDirection = false
    end

    if switchDirection then
        self.x = self.x - 250 * dt
    else
        self.x = self.x + 250 * dt
    end
end

function Enemy:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end
