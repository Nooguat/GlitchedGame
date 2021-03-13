function love.load()
    x = 100
    y = 200
end
function love.update(dt)
    if love.keyboard.isDown("up")then
        y = y + 5 * (dt + 2)
    end
    if love.keyboard.isDown("down")then
        y = y - 5 * (dt + 2)
    end
    if love.keyboard.isDown("right")then
        x = x + 5 * (dt + 2)
    end
    if love.keyboard.isDown("left")then
        x = x - 5 * (dt + 2)
    end
    if x > 800 or x < 0 then
        x = 0
    end
    if y > 600 or y < 0 then
        y = 0
    end
end
function love.draw()
    love.graphics.rectangle('line',x,y,200,150)
end