---@meta

---Semi-manual garbage collection. \
---Called once per frame, spreading big collections over several. \
---This will "catch up" when there is too much work to do, making it more predictable. \
---It is **not** advised to disable garbage collection completely.
---@param time_budget? number How long to spend on garbage collection (default `1e-3`)
---@param memory_ceiling? number lua memory limit in MB (default `64`)
---@param disable_otherwise? boolean Disable garbage collection (default `false`)
return function(time_budget, memory_ceiling, disable_otherwise)
end
