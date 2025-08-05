--! file: main.lua

_G.love = require "love"

local score = 0

function love.load()
    require "player"
    require "enemy"
    require "projectile"
    require "checkCollision"

    player = Player()
    enemy = Enemy()

    listOfShots = {}
end

function love.keypressed(key)
    player:keyPressed(key)
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)

    for i, v in ipairs(listOfShots) do
        v:update(dt)
        if checkCollision(v, enemy) then
            score = score + 1
        end
    end
end

function love.draw()
    love.graphics.print(string.format("score: %s", score))

    player:draw()
    enemy:draw()

    for i, v in ipairs(listOfShots) do
        love.graphics.draw(v.sprite, v.x, v.y)
    end
end
