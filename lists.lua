listObject = {empty_str = "CLR"}
listObject.__index = listObject

function listObject.New(self)

	local new_list = {}
	setmetatable(new_list,listObject)
	return new_list

end

function listObject.NewEntry(self, inserted_object)

	local empty_handle

	-- # hakee kunnes tulee nill vastaan.

	for i = 1, #self do
		if self[i] == self.empty_str then

			empty_handle = i
			break
		end
	end

	if empty_handle == nil then
		empty_handle = #self + 1
	end

	self[empty_handle] = inserted_object

	inserted_object.handle = empty_handle
	inserted_object.ref_list = self

	return empty_handle

end

function listObject.DeleteEntry(self, delete_handle)
	self[delete_handle] = self.empty_str
end

function listObject.IsEmpty(self, index)
	return self[index] == self.empty_str
end