---@meta

---Various intuitive assertions
---@class batteries.assert
batteries.assert = {}

---batteries.Asserts a value is not nil.
---@param value any Value to check
---@param message? string Error details message (default `""`)
---@param stack_level? integer Error message stack level (default `0`)
---@return any value Value that was checked, for chaining
function batteries.assert:some(value, message, stack_level)
end

---batteries.Asserts two values are equal.
---@param a any First value
---@param b any Second value
---@param message? string Error details message (default `""`)
---@param stack_level? integer Error message stack level (default `0`)
---@return any a Value that was checked, for chaining
function batteries.assert:equal(a, b, message, stack_level)
end

---batteries.Asserts two values are **not** equal.
---@param a any First value
---@param b any Second value
---@param message? string Error details message (default `""`)
---@param stack_level? integer Error message stack level (default `0`)
---@return any a Value that was checked, for chaining
function batteries.assert:not_equal(a, b, message, stack_level)
end

---batteries.Asserts that @value is of type @type.
---@param value any Value to check
---@param type any Type to check on @value
---@param message? string Error details message (default `""`)
---@param stack_level? integer Error message stack level (default `0`)
---@return any value Value that was checked, for chaining
function batteries.assert:type(value, type, message, stack_level)
end

---batteries.Asserts that @value is of type @type or `nil`.
---@param value any Value to check
---@param type any Type to check on @value
---@param message? string Error details message (default `""`)
---@param stack_level? integer Error message stack level (default `0`)
---@return any value Value that was checked, for chaining
function batteries.assert:type_or_nil(value, type, message, stack_level)
end

---batteries.Asserts that @value is one of the items in @options.
---@param value any
---@param options table
---@param message string
---@param stack_level integer
---@return any value Value that was checked, for chaining
function batteries.assert:one_of(value, options, message, stack_level)
end
