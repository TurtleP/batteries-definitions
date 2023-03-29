---@meta

---Extra mathematical functions
---@class batteries.mathx
local mathx = {}

---Wraps @value around the range.
---@param value number The number to wrap
---@param low number The lower bound (inclusive)
---@param high number The upper bound (exclusive)
---@return number wrapped The wrapped number
function mathx.wrap(value, low, high)
end

---Wraps @index around the indices of @table.
---@param index integer The index to wrap
---@param table table The table to wrap the index around
---@return integer index The wrapped index
function mathx.wrap_index(index, table)
end

---Clamps @value to the range.
---@param value number The value to clamp
---@param low number The lower bound (inclusive)
---@param high number The upper bound (exclusive)
---@return number clamped The clamped value
function mathx.clamp(value, low, high)
end

---Clamps @value to the range.
---@param value number The value to clamp
---@return number clamped The clamped value [0, 1]
function mathx.clamp01(value)
end

---Rounds @value to the nearest whole, away from zero.
---@param value number The value to round
---@return number rounded The rounded value
function mathx.round(value)
end

---Round @value to one-in of @divisor. \
---Example: @divisor = 2, v rounds to increments of 0.5.
---@param value number The value to round one-in
---@param divisor number The value to divide by
---@return number value The rounded value
function mathx.to_one_in(value, divisor)
end

---Round @value to a given decimal precision.
---@param value number The value to round
---@param precision number The number of decimal points
---@return number value The rounded value
function mathx.to_precision(value, precision)
end

---Inverts the sign of a scalar. \
---If @value is `0`, it returns `0`.
---@param value number The number to sign
---@return number value The signed number
function mathx.sign(value)
end

----
--- Linear interpolation
----

---Linearly interpolates between @a and @b over @time.
---@param a number The first number
---@param b number The second number
---@param time number The time to interpolate over
---@return number value The interpolated value
function mathx.lerp(a, b, time)
end

---Linearly interpolates between @a and @b over @time. \
---This is useful to make sure dynamic lerps reach their target.
---@param a number The first number
---@param b number The second number
---@param time number The time to interpolate over
---@param eps number The minimum final step
---@return number value The interpolated value
function mathx.lerp_eps(a, b, time, eps)
end

---Bilinearly interpolates between four samples.
---@param a number The first number
---@param b number The second number
---@param c number The third number
---@param d number The fourth number
---@param sample_time number The time for all four samples
---@param time number The time for the final lerp
function mathx.bilerp(a, b, c, d, sample_time, time)
end

----
--- Easing curves
----

---Classic smoothstep. \
---[Open an Example in the Browser](https://github.com/1bardesign/batteries-examples/blob/master/math.lua#L78-L82)
---@param factor number The factor to smoothen by
---@return number value The smoothed value
function mathx.smoothstep(factor)
end

---Classic smoothstep. Slightly more expensive than `batteries.mathx.smoothstep`, but better animation results. \
---[Open an Example in the Browser](https://github.com/1bardesign/batteries-examples/blob/master/math.lua#L83-L87)
---@param factor number The factor to smoothen by
---@return number value The smoothed value
function mathx.smootherstep(factor)
end

---Ping pong from `0` to `1` and back again.
---@param factor number The factor to ping pong by
---@return number value The ping ponged value
function mathx.pingpong(factor)
end

---Quadratic ease in.
---@param factor number The factor to ease in by
---@return number value The eased in value
function mathx.ease_in(factor)
end

---Quadratic ease out.
---@param factor number The factor to ease out by
---@return number value The eased out value
function mathx.ease_out(factor)
end

---Quadratic ease in and out.
---@param factor number The factor to ease in and out by
---@return number value The eased in and out value
function mathx.ease_inout(factor)
end

---Quadratic ease in and out; branchless but imperfect. \
---Either smooth or smoothstep are a better alternative.
---@param factor number The factor to ease in and out by
---@return number value The eased in and out value
function mathx.ease_inout_branchless(factor)
end

----
--- Random
----

---Return a random sign.
---@param random? love.RandomGenerator The random generator to use
---@return number sign A signed number, either `-1` or `1`
function mathx.random_sign(random)
end

---Continuously return a random value between @min and @max.
---@param min number The minimum value
---@param max number The maximum value
---@param random? love.RandomGenerator The random generator to use
function mathx.random_lerp(min, max, random)
end

---Checks if @value is not a number.
---@param value any The value to check
---@return boolean is_nan Whether the value is not a number
function mathx.isnan(value)
end

mathx.tau = math.pi * 2

---Normalise an angle, wrapped around [`-math.pi`, `math.pi`). \
---Each angle only has a single value representing it.
---@param angle number The angle to normalise
---@return number normalised_angle The normalised angle
function mathx.normalise_angle(angle)
end

mathx.normalize_angle = mathx.normalise_angle

---Get the normalised difference between two angles. \
---The two angles do not require to be normalised.
---@param a number The first angle
---@param b number The second angle
---@return number difference The normalised difference of the angles
function mathx.angle_difference(a, b)
end

---Linearly interpolate the difference between two angles.
---@param a number The first angle
---@param b number The second angle
---@param time number The time to interpolate over
---@return number difference The normalised difference of the angles
function mathx.lerp_angle(a, b, time)
end

---Linearly interpolate the difference between two angles.
---This is useful to make sure dynamic lerps reach their target.
---@param a number The first angle
---@param b number The second angle
---@param time number The time to interpolate over
---@param eps number The minimum final step
---@return number difference The normalised difference of the angles
function mathx.lerp_angle_eps(a, b, time, eps)
end

----
--- Geometric functions standalone/"unpacked" components and multi-return
--- Consider using vec2 if you need anything complex!
----

---Rotate a point around the origin by an angle.
---@param x number The x-coordinate
---@param y number The y-coordinate
---@param angle number The angle to rotate on
---@return number x The rotated x-coordinate
---@return number y The rotated y-coordinate
function mathx.rotate(x, y, angle)
end

---Gets the length of a vector from its origin.
---@param x number The x-coordinate
---@param y number The y-coordinate
---@return number length The length of the vector
function mathx.length(x, y)
end

---Gets the distance between two points.
---@param x1 number The x-coordinate of the first point
---@param y1 number The y-coordinate of the first point
---@param x2 number The x-coordinate of the second point
---@param y2 number The y-coordinate of the second point
---@return number distance The distance between the two points
function mathx.distance(x1, y1, x2, y2)
end

return mathx