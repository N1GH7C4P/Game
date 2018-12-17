function love.load()
    
end

function love.draw()

	if game_state == 'menu' then

	end

	if game_state == 'game' then
		
	end

	if game_state == 'game_over' then

	end
end

function love.update()

	dt = love.timer.getDelta()

	if game_state == 'menu' then

	end

	if game_state == 'game' then

		for c = 1, #creatureList do
			if not creatureList:IsEmpty(c) then
				creatureList[c]:Update()
			end
		end
	end

	if game_state == 'game_over' then

	end
end
