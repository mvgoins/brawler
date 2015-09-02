
require "assets"
require "controls"

player = {
			["x"] = 300,
			["y"] = 300,
		 }

function love.load()
	love.keyboard.setKeyRepeat(true)
	love.graphics.setDefaultFilter("nearest","nearest")
end

r = 0
g = 0
b = 0
a = 0

function love.update(dt)

	playerMovement()

end

function love.draw()

	love.graphics.draw(stagetest,0,0)
	love.graphics.draw(avatar,player.x,player.y,0,2,2,16,32)
	

	love.graphics.print(r,0,0)
	love.graphics.print(g,0,15)
	love.graphics.print(b,0,30)
	love.graphics.print(a,0,45)
	
	love.graphics.print("x: "..player.x,100,0)
	love.graphics.print("y: "..player.y,100,15)

	
	
end

function love.keypressed(key)
end

function love.mousepressed(x,y,button)

	if button == "l" then
		r, g, b, a = stagemask:getPixel(x,y)
	end	

end