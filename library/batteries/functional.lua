---@meta

---Functional programming facilities
---@class batteries.functional
batteries.functional = {}

---Returns the identity of a value.
---@param value any Value to get the identity of
---@return any value Value that was identitied
function batteries.functional.identity(value)
end

---Simple sequential iteration. \
---The @callback can return non-nil to break the loop, returning its value. \
---Otherwise, returns the table for chaining.
---@param table table Table to iterate
---@param callback function Function to call on each element
---@return any result See comments.
function batteries.functional.foreach(table, callback)
end

---Perform a left-to-right reduction on @table using @callback with @seed as an initial value. \
---This is performed iteratively, so there is no stack smashing. \
---Example: `reduce({1, 2, 3}, 0, f) -> f(f(f(0, 1), 2), 3)`
---@param table table Table to iterate
---@param seed any Value to capture
---@param callback function Callback declared as `f(@seed, table_element, index)
---@return any seed See @seed
function batteries.functional.reduce(table, seed, callback)
end

---Maps a sequence without modifying the original data. \
---This automatically drops any `nil`s to simultaneously map and filter.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table mapped The newly mapped sequence
function batteries.functional.map(table, callback)
end

---Maps a sequence in-place, modifying it. \
---This automatically drops any `nil`s to simultaneously map and filter.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table mapped The newly mapped sequence
function batteries.functional.map_inplace(table, callback)
end

---Alias for map_inplace
batteries.functional.remap = batteries.functional.map_inplace

---Maps a sequence. \
---This automatically drops any `nil`s to simultaneously map and filter. \
---[Open an Example in the Browser](https://github.com/1bardesign/batteries-examples/blob/master/batteries.functional.lua#L33-L39)
---@param table table Table of tables to iterate
---@param key string Key to map to
---@return table mapped The newly mapped sequence
function batteries.functional.map_field(table, key)
end

---Maps a sequence by a method call. \
---This automatically drops any `nil`s to simultaneously map and filter.
---[Open an Example in the Browser](https://github.com/1bardesign/batteries-examples/blob/master/batteries.functional.lua#L41-L53)
---@param table table Table to iterate
---@param method string|function Method to map by
---@vararg any Arguments to pass
---@return table result The newly mapped sequence
function batteries.functional.map_call(table, method, ...)
end

---Maps a sequence into a new index space. \
---The callback function may return an index where the value will be stored in the result. \
---If no index (or `nil`) is provided, it will insert as normal.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table result The newly mapped sequence
function batteries.functional.splat(table, callback)
end

---Returns a sequence containing items where `callback(value)` returns truthy. \
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table result The new sequence
function batteries.functional.filter(table, callback)
end

---Returns a sequence containing items where `callback(value)` returns truthy. \
---This will perform operations in-place, modifying the original data.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table result The original sequence, modified
function batteries.functional.filter_inplace(table, callback)
end

---Returns a sequence containing items where `callback(value)` returns falsey. \
---`nil` results are included to be the exact complement of filter; use `batteries.functional.partition` if you need both.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
function batteries.functional.remove_if(table, callback)
end

---Paritions a sequence into two, based on filter criteria. \
---[Open an Example in the Browser](https://github.com/1bardesign/batteries-examples/blob/master/batteries.functional.lua#L106-L110)
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table sequence_one First partition
---@return table sequence_two Second partition
function batteries.functional.partition(table, callback)
end

---Returns a sequence where elements in the table are grouped into sequential tables by the result of the callback on each element. \
---This is more general than parition, but knowledge of groups ahead of time. \
---Use numeric grouping and pre-seed if you want to avoid pairs!
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table result The newly mapped group data
function batteries.functional.group_by(table, callback)
end

---Zips two sequences together into a new table, based on a callback. \
---Iteration is limited by min(#table_one, #table_two); `nil` results are ignored. \
---[Open an Example in the Browser](https://github.com/1bardesign/batteries-examples/blob/master/batteries.functional.lua#L111-L113)
---@param table_one table The first table to zip
---@param table_two table The second table to zip
---@param callback function Callback declared as `f(table_one_element, table_two_element, index)`
---@return table result The newly zipped data sequence
function batteries.functional.zip(table_one, table_two, callback)
end

-------------------
---Specialized Maps
-------------------

---Maps a sequence where the callback generaly results into a sequence, appending data into one big sequence.
---This automatically drops any `nil`s to simultaneously map and filter.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return table result The new sequence
function batteries.functional.stitch(table, callback)
end

---Alias
batteries.functional.map_stitch = batteries.functional.stitch

---Maps a sequence by cycling through the input data. \
---This is useful for inter-dependent data. \
---This automatically drops any `nil`s to simultaneously map and filter. \
---Example:
---```
---local sequence = batteries.functional.cycle({ 1, 2, 3 }, function(a, b)
---    print(a, b)
---end)
---  -> 1  2
---  2. 2  3
---  3. 3  1
---```
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, table_element)`
---@return table result The new sequence
function batteries.functional.cycle(table, callback)
end

---Alias
batteries.functional.map_cycle = batteries.functional.cycle

---Maps a sequence by chaining through the input data. \
---This is useful for inter-dependent data. \
---This automatically drops any `nil`s to simultaneously map and filter. \
---Example:
---```
---local sequence = batteries.functional.cycle({ 1, 2, 3 }, function(a, b)
---    print(a, b)
---end)
---  -> 1  2
---  2. 2  3
---```
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element_previous, table_element)`
---@return table result The new sequence
function batteries.functional.chain(table, callback)
end

---Alias
batteries.functional.map_chain = batteries.functional.chain

-------------------
--- Data Generation
-------------------

---Generate data into a table. \
---This automatically drops any `nil`s to simultaneously map and filter.
---@param count integer Total number of items to generate
---@param callback function Callback declared as `f(index)`
---@return table result The newly generated sequence
function batteries.functional.generate(count, callback)
end

---Generate data into via a two-dimensional iteration. \
---If a two-dimensional table is required, nest one-dimensional calls. \
---**Note:** this returns a one-dimensional table.
---@param width integer The x-axis size
---@param height integer the y-axis size
---@param callback function Callback declared as `f(x, y)`
---@return table result The newly generated sequence
function batteries.functional.generate_2d(width, height, callback)
end

---------------------------------
--- Common queries and reductions
---------------------------------

---Return whether any table element matches the query.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return boolean matching Whether any of the elements matched the query
function batteries.functional.any(table, callback)
end

---Return whether none of the table elements match the query.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return boolean none_matching Whether none of the elements matched the query
function batteries.functional.none(table, callback)
end

---Return whether all the table elements match the query.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return boolean matching Whether all elements matched the query
function batteries.functional.all(table, callback)
end

---Return whether the table contains an element.
---@param table table Table to iterate
---@param value any The value to check for
---@return boolean found Whether the element was found
function batteries.functional.contains(table, value)
end

---Counts the elements of the table that match the query.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return integer count The count of matching items
function batteries.functional.count(table, callback)
end

---Return the numeric sum of all elements in the table.
---@param table table The table to iterate
---@return number sum The sum of the items in the table
function batteries.functional.sum(table)
end

---Return the numeric mean of all elements in the table.
---@param table table The table to iterate
---@return number mean The mean of the items in the table
function batteries.functional.mean(table)
end

---Return the minimum and maximum of the table in one pass. \
---This will return zero for both if the table is empty.
---@param table table The table to iterate
---@return number min The minimum element in the table
---@return number max The maximum element in the table
function batteries.functional.minmax(table)
end

---Return the minimum element of the table.
---This will return zero if the table is empty.
---@param table table
---@return number min The minimum element in the table
function batteries.functional.min(table)
end

---Return the maximum element of the table.
---This will return zero if the table is empty.
---@param table table
---@return number max The maximum element in the table
function batteries.functional.max(table)
end

---Return the element that results in the lowest numeric value.
---@param table table The table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return number min The lowest numeric value in the table
function batteries.functional.find_min(table, callback)
end

---Return the element that results in the greatest numeric value.
---@param table table The table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@return number max The greatest numeric value in the table
function batteries.functional.find_max(table, callback)
end

---Alias
batteries.functional.find_best = batteries.functional.find_max

---Return the element that results in the value nearest to the target value. \
---**Note:** This function is not well-optimized.
---@param table table The table to iterate
---@param callback function Callback declared as `f(table_element, index)`
---@param target number The target reference number
---@return number nearest The nearest numerical value to the target value
function batteries.functional.find_nearest(table, callback, target)
end

---Return the first element that results in a truthy value.
---@param table table Table to iterate
---@param callback function Callback declared as `f(table_element)`
---@return any value The matching element
function batteries.functional.find_match(table, callback)
end
