---@meta

---@class batteries.class
---@operator call(table|nil): batteries.class
---@field __id   integer unique generated id
---@field __type string  the class name for type calls
local class = {}

---Checks if a class is of a specified type.
---@param type batteries.class class to check against
---@return boolean is_of_type Whether this class is the type of @type
function class:is(type)
end

---Perform a partial super construction for an instance. \
---This must be called when a new class instance is constructed via inheritance.
---@vararg any
function class:super(...)
end

---Return the name of the class.
function class:__tostring()
end

return class
