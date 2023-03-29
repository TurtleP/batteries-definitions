---@meta

---Extra table routines
---@class batteries.tablex : tablelib
local tablex = {}

tablex.join = tablex.concat

---Return the front element of a table.
---@param table table The table to index
---@return any value The value at the front of the table
function tablex.front(table)
end

---Return the back element of a table.
---@param table table The table to index
---@return any value The value at the back of the table
function tablex.back(table)
end

---Remove the back element of a table and return it.
---@param table table The table to remove from
---@return any value The value at the back of the table
function tablex.pop(table)
end

---Insert to the back of a table, return @table for chaining.
---@param table table The table to insert to
---@param value any The value to insert
---@return table table The input table
function tablex.push(table, value)
end

---Remove the front element of a table and return it.
---@param table table The table to remove from
---@return any value The value at the front of the table
function tablex.shift(table)
end

---Insert to the front of a table, return @table for chaining.
---@param table table The table to insert to
---@param value any The value to insert
---@return table table The input table
function tablex.unshift(table, value)
end

---Swap the table elements at @index and @other_index.
---@param table table The table to swap inside
---@param index integer The first index to swap
---@param other_index integer The second index to swap
function tablex.swap(table, index, other_index)
end

---Swaps the element at @index to the back of a table and removes it.
---@param table table The table to operate on
---@param index integer The table index
---@return any value The value at the back of the table
function tablex.swap_and_pop(table, index)
end

---Rotate the elements of a table by an amount.
---@param table table The table to rotate
---@param amount integer The number of times to rotate
function tablex.rotate(table, amount)
end

return tablex