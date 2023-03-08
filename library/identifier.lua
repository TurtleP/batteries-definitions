---@meta

---@class batteries.identifier
local identifier = {}

---Generates a version 4 UUID. \
---When no random generator (from LÖVE) is supplied, it defaults to using `math.random`.
---@param random? love.RandomGenerator (default `nil`)
---@return string new_uuid The newly generated UUID
function identifier.uuid4(random)
end

---Generate a ULID using random numbers based on time. \
---When no random generator (from LÖVE) is supplied, it defaults to using `math.random`. \
---See https://github.com/Tieske/ulid.lua
---@param random? love.RandomGenerator (default `nil`)
---@param time? number The current time
---@return string new_ulid The newly generated ULID
function identifier.ulid(random, time)
end

return identifier
