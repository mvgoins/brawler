
function playerMovement()
	if love.keyboard.isDown("up") then
		local colorcheck = stagemask:getPixel(player.x,player.y - 1)
		
		if colorcheck == 255 then
			player.y = player.y - 1
		end
	end

	if love.keyboard.isDown("down") then
		local colorcheck = stagemask:getPixel(player.x,player.y + 1)
		
		if colorcheck == 255 then
			player.y = player.y + 1
		end
	end		

	if love.keyboard.isDown("left") then
		local colorcheck = stagemask:getPixel(player.x - 1,player.y)
		
		if colorcheck == 255 then
			player.x = player.x - 1
		end
	end
	
	if love.keyboard.isDown("right") then
		local colorcheck = stagemask:getPixel(player.x + 1,player.y)
		
		if colorcheck == 255 then
			player.x = player.x + 1
		end
	end
end