---@meta

---Very simple benchmarking tools
---@class batteries.measure
local measure = {}

---Replace this with whatever the highest accuracy timer is. \
---NOTE: The default is `os.time`
---@return number time The current time
function measure.get_time()
end

---Measure the time taken in seconds for @func.
---@param func function The function to test
---@param runs integer The total amount of runs (default `1000`)
---@param warmup_runs? integer The number of warmup runs (default `0`)
---@return number mean The mean number of seconds
---@return number minumum The minimum number of seconds
---@return number maximum The maximum number of seconds
function measure.time_taken(func, runs, warmup_runs)
end

---Measure the memory increase in kilobytes for @func.
---@param func function The function to test
---@param runs integer The total amount of runs (default `1000`)
---@param warmup_runs? integer The number of warmup runs (default `0`)
---@return number mean The mean number of kilobytes
---@return number minumum The minimum number of kilobytes
---@return number maximum The maximum number of kilobytes
function measure.memory_taken(func, runs, warmup_runs)
end

---Measure memory increase in kilobytes for @func. \
---This performs a **full** collection each run and then stops the gc.
---@param func function The function to test
---@param runs integer The total amount of runs (default `1000`)
---@param warmup_runs? integer The number of warmup runs (default `0`)
---@return number mean The mean number of kilobytes
---@return number minumum The minimum number of kilobytes
---@return number maximum The maximum number of kilobytes
function measure.memory_taken_strict(func, runs, warmup_runs)
end

return measure