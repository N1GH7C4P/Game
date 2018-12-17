playerObject = {} 
playerObject.__index = playerObject
setmetatable(playerObject, {__index = creatureObject})

function playerObject.New(self, x, y, rotation)

	local new_player = creatureObject:New()
	setmetatable(new_player,playerObject)

	return new_player
end

function playerObject.Orientation(self)
	if self.x ~= nil then
		self.rotation = math.atan2((camera:mousePosition_y() - self.y),(camera:mousePosition_x() - self.x))
	end
	return self.rotation
end

function playerObject.Draw(self)

end

function playerObject.Update(self)

end

function playerObject.DrawAnimations(self)

end

function playerObject.UpdateAnimations(self)

end
