---@meta

---Geometric intersection routines
---@class batteries.intersect
batteries.intersect = {}

-----------
--- Circles
-----------

---Check if a circle overlaps a given point.
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@param point batteries.vec2 The point to check
---@return boolean overlapping Whether the point overlaps the circle
function batteries.intersect.circle_point_overlap(position, radius, point)
end

---Check if a circle overlaps another circle.
---@param a_position batteries.vec2 The first circle's position
---@param a_radius number The first circle's radius
---@param b_position batteries.vec2 The second circle's position
---@param b_radius number The second circle's radius
---@return boolean overlapping Whether the two circles overlap
function batteries.intersect.circle_circle_overlap(a_position, a_radius, b_position, b_radius)
end

---Check if a point collides with a circle.
---@param a_position batteries.vec2 The circle's position
---@param a_radius number The circle's radius
---@param point batteries.vec2 The point to check
---@param separation? batteries.vec2 The separation distance between the circle and point (default `batteries.vec2(0)`)
---@return boolean colliding Whether the point and circle are colliding
function batteries.intersect.circle_point_collide(a_position, a_radius, point, separation)
end

---Check if two circles collide.
---@param a_position batteries.vec2 The first circle's position
---@param a_radius number The first circle's radius
---@param b_position batteries.vec2 The second circle's position
---@param b_radius number The second circle's radius
---@param separation? batteries.vec2 The separation distance between the circles (default `batteries.vec2(0)`)
---@return boolean colliding Whether the circles are colliding
function batteries.intersect.circle_circle_collide(a_position, a_radius, b_position, b_radius, separation)
end

-----------------
--- Line Segments
-----------------

---Get the nearest point on the line segment from point `b`.
---@param line_start batteries.vec2 The start point on the line segment
---@param line_end batteries.vec2 The ending point on the line segment
---@param point batteries.vec2 The point to reference
---@param separation? batteries.vec2 The separation distance between the points (default `batteries.vec2(0)`)
---@return batteries.vec2 closest The nearest point on the line from the reference point
function batteries.intersect.nearest_point_on_line(line_start, line_end, point, separation)
end

---Check if a line segment overlaps with a circle.
---@param line_start batteries.vec2 The start point on the line segment
---@param line_end batteries.vec2 The ending point on the line segment
---@param line_radius number The line radius
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@return boolean overlapping Whether the line segment overlaps the circle
function batteries.intersect.line_circle_overlap(line_start, line_end, line_radius, position, radius)
end

---Check if a line segment collides with a circle.
---@param line_start batteries.vec2 The start point on the line segment
---@param line_end batteries.vec2 The ending point on the line segment
---@param line_radius number The line radius
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@param separation? batteries.vec2 The separation distance between the line and circle (default `batteries.vec2(0)`)
---@return boolean colliding Whether the line and circle are colliding
function batteries.intersect.line_circle_collide(line_start, line_end, line_radius, position, radius, separation)
end

---Checks if two line segments are colliding.
---@param a_start batteries.vec2 The start point on the first line segment
---@param a_end batteries.vec2 The end point on the first line segment
---@param a_radius number The line radius of the first line segment
---@param b_start batteries.vec2 The start point on the second line segment
---@param b_end batteries.vec2 The end point on the second line segment
---@param b_radius number The line radius of the second line segment
---@param separation? batteries.vec2 The separation distance between the lines (default `batteries.vec2(0)`)
---@return boolean colliding Whether the two lines are colliding
function batteries.intersect.line_line_collide(a_start, a_end, a_radius, b_start, b_end, b_radius, separation)
end

----------------
--- Axis aligned
----------------

---Check if a bounding box overlaps a given point.
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param point batteries.vec2 The point to check
---@return boolean overlapping Whether the bounding box overlaps the point
function batteries.intersect.aabb_point_overlap(position, half_size, point)
end

---Check if a bounding box collides with a given point.
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param point batteries.vec2 The point to check
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean colliding Whether the bounding box collides with the point
function batteries.intersect.aabb_point_collide(position, half_size, point, separation)
end

---Check if a bounding box overlaps a given bounding box.
---@param a_position batteries.vec2 Center position of the first bounding box
---@param a_half_size batteries.vec2 Half-size dimensions of the first bounding box
---@param b_position batteries.vec2 Center position of the second bounding box
---@param b_half_size batteries.vec2 Half-size dimensions of the second bounding box
---@return boolean overlapping Whether the bounding boxes overlap
function batteries.intersect.aabb_aabb_overlap(a_position, a_half_size, b_position, b_half_size)
end

---Check if a bounding box collides with a given bounding box.
---@param a_position batteries.vec2 Center position of the first bounding box
---@param a_half_size batteries.vec2 Half-size dimensions of the first bounding box
---@param b_position batteries.vec2 Center position of the second bounding box
---@param b_half_size batteries.vec2 Half-size dimensions of the second bounding box
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean overlapping Whether the bounding boxes overlap
function batteries.intersect.aabb_aabb_collide(a_position, a_half_size, b_position, b_half_size, separation)
end

---Clamps a point to a bounding box.
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param point batteries.vec2 The point to check
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return batteries.vec2 clamped_point The clamped point
function batteries.intersect.aabb_point_clamp(position, half_size, point, separation)
end

---Checks if a bounding box overlaps a circle.
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param circle_position batteries.vec2 The position of the circle
---@param radius number The circle's radius
---@return boolean overlapping Whether the bounding box overlaps the circle
function batteries.intersect.aabb_circle_overlap(position, half_size, circle_position, radius)
end

---Checks if a bounding box overlaps a circle.
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param circle_position batteries.vec2 The position of the circle
---@param radius number The circle's radius
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean overlapping Whether the bounding box overlaps the circle
function batteries.intersect.aabb_circle_collide(position, half_size, circle_position, radius, separation)
end

---Converts a raw x, y, width, height rectangle to aabb batteries.vectors
---@param x number The x component
---@param y number The y component
---@param width number The width component
---@param height number The height component
---@return batteries.vec2 position The center position of the bounding box
---@return batteries.vec2 half_size The half-size of the bounding box
function batteries.intersect.rect_raw_to_aabb(x, y, width, height)
end

---Converts a rectangle to aabb batteries.vectors.
---@param position {x: number, y: number}
---@param size {x: number, y: number}
---@return batteries.vec2 position The center position of the bounding box
---@return batteries.vec2 half_size The half-size of the bounding box
function batteries.intersect.rect_to_aabb(position, size)
end

---Checks if a point is inside of a polygon. \
---This is based on the winding number, so re-intersecting areas are counted as solid rather than inverting.
---@param point batteries.vec2 The point to check
---@param polygon batteries.vec2[] List of batteries.vectors for the polygon
function batteries.intersect.point_in_poly(point, polygon)
end

----------------------
--- Reversed functions
----------------------

---Reverses if there is a batteries.vector, preserving when false
---@param result batteries.vec2
---@return batteries.vec2? result
function batteries.intersect.reverse_msv(result)
end

---Checks if a point and a circle overlap.
---@param point batteries.vec2 The point to check
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@return boolean overlapping Whether the point and circle are overlapping
function batteries.intersect.point_circle_overlap(point, position, radius)
end

---Checks if a point and a circle collide.
---@param point batteries.vec2 The point to check
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean colliding Whether the point and circle are colliding
function batteries.intersect.point_circle_collide(point, position, radius, separation)
end

---Checks if a point overlaps with a bounding box.
---@param point batteries.vec2 The point to check
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@return boolean overlapping Whether the point overlaps with the bounding box
function batteries.intersect.point_aabb_overlap(point, position, half_size)
end

---Checks if a point collides with a bounding box.
---@param point batteries.vec2 The point to check
---@param position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean overlapping Whether the point collides with the bounding box
function batteries.intersect.point_aabb_collide(point, position, half_size, separation)
end

---Checks if a circle overlaps with a bounding box.
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@param box_position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@return boolean overlapping Whether the circle overlaps with the bounding box
function batteries.intersect.circle_aabb_overlap(position, radius, box_position, half_size)
end

---Checks if a circle collides with a bounding box.
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@param box_position batteries.vec2 Center position of the box
---@param half_size batteries.vec2 Half-size dimensions of the box
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean colliding Whether the circle collides with the bounding box
function batteries.intersect.circle_aabb_collide(position, radius, box_position, half_size, separation)
end

---Checks if a circle collides with a line.
---@param position batteries.vec2 The circle's position
---@param radius number The circle's radius
---@param line_start batteries.vec2 The line's start point
---@param line_end batteries.vec2 The line's end point
---@param line_radius number The line's radius
---@param separation? batteries.vec2 The separation distance between the bounding box and point (default `batteries.vec2(0)`)
---@return boolean colliding Whether the circle collides with the line
function batteries.intersect.circle_line_collide(position, radius, line_start, line_end, line_radius, separation)
end

----------------------
--- Resolution helpers
----------------------

---Resolve a collision between two bodies with a minimum separating vector. \
---When balance is 1, only a_position will move to resolve. \
---When balance is 0, only b_position will move to resolve. \
---When balance is 0.5 (default), it will be distributed evenly.
---@param a_position batteries.vec2 The first body position
---@param b_position batteries.vec2 The second body position
---@param separation? batteries.vec2 The separation distance between the two bodies (default `batteries.vec2(0)`)
---@param balance? number The movement to resolve (default `0.5`), between [0, 1]
function batteries.intersect.resolve_msv(a_position, b_position, separation, balance)
end

---Gets a normalized balanced factor from two mass inputs. \
---This treats <= 0, infinite, and nil masses as static bodies.
---@param first number The first mass value
---@param second number The second mass value
---@return number balance The calculated balance
function batteries.intersect.balance_from_mass(first, second)
end

---Bounce a velocity of a normal vector (modifying the velocity in the process). \
---This flips the part of the velocity in the direction of the normal.
---@param velocity batteries.vec2 The velocity
---@param normal batteries.vec2 The normalized vector
---@param conservation? number The dampening of the velocity (default `1`)
---@return number velocity The resulting velocity vector
function batteries.intersect.bounce_off(velocity, normal, conservation)
end

---Bounce two similar bodies off each other, transferring energy.
---@param velocity_a batteries.vec2 The first velocity vector
---@param velocity_b batteries.vec2 The second velocity vector
---@param normal batteries.vec2 The normalized vector
---@param conservation? number The dampening of the velocity (default `1`)
function batteries.intersect.mutual_bounce(velocity_a, velocity_b, normal, conservation)
end

return intersect
