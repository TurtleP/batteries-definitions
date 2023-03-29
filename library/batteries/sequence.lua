---@meta

---Functional and object oriented wrapper for ordered tables
---@class batteries.sequence : batteries.tablex
---@operator call() : batteries.sequence
batteries.sequence = {}

batteries.sequence.ipairs = ipairs
batteries.sequence.iterate = ipairs

---Upgrade a table to a sequence or create a new sequence.
---@param table? table
---@return self
function batteries.sequence:new(table)
end
