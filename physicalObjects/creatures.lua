creatureList = listObject:New() 
creatureObject = {}
creatureObject.__index = creatureObject
setmetatable(creatureObject, {__index = physicalObject})

function creatureObject.New(self, x, y, state, speed)
 
	local new_creature = {}
	
	setmetatable(new_creature,creatureObject)
	creatureList:NewEntry(new_creature)

	return new_creature
end

function creatureObject.Update(self)
end

function creatureObject.Draw(self)
end