---@meta

---Functional and object oriented wrapper for ordered tables
---@class batteries.sequence : batteries.tablex
---@operator call() : batteries.sequence
local sequence = {}

sequence.ipairs = ipairs
sequence.iterate = ipairs

---Upgrade a table to a sequence or create a new sequence.
---@param table? table
---@return self
function sequence:new(table)
end

return sequence