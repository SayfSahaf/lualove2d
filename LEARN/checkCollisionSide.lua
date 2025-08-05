--! file: checkCollisionSide.lua

function checkCollisionSide(a, b)
    local a_left = a.x
    local a_right = a.x + a.width
    local a_top = a.y
    local a_bottom = a.y + a.height

    local b_left = b.x
    local b_right = b.x + b.width
    local b_top = b.y
    local b_bottom = b.y + b.height

    local a_left_collision = false
    local a_right_collision = false
    local a_top_collision = false
    local a_bottom_collision = false

    local b_left_collision = false
    local b_right_collision = false
    local b_top_collision = false
    local b_bottom_collision = false

    if a_left == b_right then
        a_left_collision = true
        b_right_collision = true
    else
        a_left_collision = false
        b_right_collision = false
    end

    if a_right == b_left then
        a_right_collision = true
        b_left_collision = true
    else
        a_right_collision = false
        b_left_collision = false
    end

    if a_top == b_bottom then
        a_top_collision = true
        b_bottom_collision = true
    else
        a_top_collision = false
        b_bottom_collision = false
    end

    if a_bottom == b_top then
        a_bottom_collision = true
        b_top_collision = true
    else
        a_bottom_collision = false
        b_top_collision = false
    end

    return a_left_collision, a_right_collision, a_top_collision, a_bottom_collision, b_left_collision, b_right_collision,
        b_top_collision, b_bottom_collision
end
