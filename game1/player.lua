--! file: player.lua

local Object = require "classic"

Player = Object:extend()

function Player:new()
    self.sprite = love.graphics.newImage("player_one.png")
    self.x = 0
    self.y = 20
    self.width = self.sprite:getWidth()
    self.height = self.sprite:getHeight()
end

function Player:keyPressed(key)
    if key == "space" then
        table.insert(listOfShots, Projectile(self.x))
    end
end

function Player:update(dt)
    if love.keyboard.isDown("right") then
        self.x = self.x + 300 * dt
    end
    if love.keyboard.isDown("left") then
        self.x = self.x - 300 * dt
    end
end

function Player:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end
