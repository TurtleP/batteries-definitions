---@meta

---Pretty formatting and printing for nested data structures
---@class batteries.pretty
local pretty = {}

---@class batteries.pretty.config
---@field indent boolean | number | string
---@field depth integer
---@field per_line integer

---Pretty print something directly.
---@param input any The input value to print
---@param config? batteries.pretty.config The configuration to use
function pretty.print(input, config)
end

---Pretty format something into a string
---@param input any The input value to stringify
---@param config? batteries.pretty.config The configuration to use
---@return string formatted The formatted string
function pretty.string(input, config)
end

return pretty