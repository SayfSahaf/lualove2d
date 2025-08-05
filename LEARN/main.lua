_G.love = require("love")

function Increment(arg, incrementNum)
    return arg + incrementNum
end

function Decrement(arg, decrementNum)
    return arg - decrementNum
end

local rect1, rect2, collision, a_left_collision, a_right_collision, a_top_collision, a_bottom_collision, b_left_collision, b_right_collision, b_top_collision, b_bottom_collision

function love.load()
    local Rectangle = require "rectangle"
    local Circle = require "circle"
    require "checkCollision"
    require "checkCollisionSide"

    -- rectangles
    rect1 = {}
    rect1.x = 10
    rect1.y = 10
    rect1.width = 25
    rect1.height = 25

    rect2 = {}
    rect2.x = 50
    rect2.y = 50
    rect2.width = 50
    rect2.height = 50

    movement = 150
    switchRect = false
end

function love.keypressed(key)
    if key == "space" then
        if switchRect == false then
            switchRect = true
        else
            switchRect = false
        end
    end
end

function love.update(dt)
    collision = checkCollision(rect1, rect2)
    a_left_collision, a_right_collision, a_top_collision, a_bottom_collision, b_left_collision, b_right_collision, b_top_collision, b_bottom_collision =
        checkCollisionSide(rect1, rect2)

    if love.keyboard.isDown("right") and switchRect == false then
        rect1.x = rect1.x + movement * dt
    end
    if love.keyboard.isDown("left") and switchRect == false then
        rect1.x = rect1.x - movement * dt
    end
    if love.keyboard.isDown("up") and switchRect == false then
        rect1.y = rect1.y - movement * dt
    end
    if love.keyboard.isDown("down") and switchRect == false then
        rect1.y = rect1.y + movement * dt
    end
    if love.keyboard.isDown("right") and switchRect == true then
        rect2.x = rect2.x + movement * dt
    end
    if love.keyboard.isDown("left") and switchRect == true then
        rect2.x = rect2.x - movement * dt
    end
    if love.keyboard.isDown("up") and switchRect == true then
        rect2.y = rect2.y - movement * dt
    end
    if love.keyboard.isDown("down") and switchRect == true then
        rect2.y = rect2.y + movement * dt
    end
end

function love.draw()
    -- love.graphics.print(string.format("x: %i, y: %i", x, y))
    love.graphics.print(string.format("switchRect: %s", switchRect))
    love.graphics.print(string.format("collision: %s", collision), 0, 15)
    love.graphics.print(string.format(
        "a_left_collision: %s, a_right_collision: %s, a_top_collision: %s, a_bottom_collision: %s, b_left_collision: %s, b_right_collision: %s, b_top_collision: %s, b_bottom_collision: %s",
        a_left_collision, a_right_collision, a_top_collision, a_bottom_collision, b_left_collision, b_right_collision,
        b_top_collision, b_bottom_collision), 0, 30)
    love.graphics.rectangle("line", rect1.x, rect1.y, rect1.width, rect1.height)
    love.graphics.rectangle("line", rect2.x, rect2.y, rect2.width, rect2.height)
end
