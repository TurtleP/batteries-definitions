---@meta

---Simple kernel for async tasks running in the background.
---@class batteries.async : batteries.class
---@operator call(): batteries.async Creates a new batteries.async kernel
local async = {}

---Adds a task to the kernel.
---@param task function Task to execute
---@param arguments table (default `{}`, can be `nil`)
---@param callback? function (default `false`)
---@param error_callback? function (default `false`)
function async:call(task, arguments, callback, error_callback)
end

---Adds a task to the kernel.
---@param coroutine coroutinelib Coroutine to add
---@param arguments? table (default `{}`)
---@param callback? function (default `false`)
---@param error_callback? function (default `false`)
function async:add(coroutine, arguments, callback, error_callback)
end

---Add a task to run after a specified delay.
---@param task function Task to execute
---@param delay number Delay in seconds
function async:add_timeout(task, delay)
end

---Add a task to run repeatedly after a specified delay. \
---**Not super useful since you cannot remove tasks.**
---@param task function Task to execute
---@param delay number Delay in seconds
function async:add_interval(task, delay)
end

---Updates tasks in the kernel.
---@return boolean success Whether there were tasks to execute
function async:update()
end

---Updates tasks for a certain amount of time.
---@param time number Max amount of time to update for
---@param early_out_stalls boolean Whether to break early if no tasks remain
function async:update_for_time(time, early_out_stalls)
end

---Stalls the current task
function async.stall()
end

---Force the current task to wait
---@param duration number Time to wait for
function async.wait(duration)
end

return async