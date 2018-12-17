physicalObject = {x = 0, y = 0} 
physicalObject.__index = physicalObject

function physicalObject.New(self, x, y)
	
	local new_obj = {x, y}

	setmetatable(new_obj,physicalObject)

	return new_obj
end

function physicalObject.Move(self, x, y)
	self.x = x
	self.y = y
end

function physicalObject.Draw(self)

end
