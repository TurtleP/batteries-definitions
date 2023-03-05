---@meta

---@class colour
local colour = {}

---Pack R, G, B into a single value.
---@param red number Red component
---@param green number Green component
---@param blue number Blue component
---@return number RGB Packed ARGB value
function colour.pack_rgb(red, green, blue)
end

---Unpack R, G, B from RGB.
---@param value number Packed RGB
---@return number red Red component
---@return number green Green component
---@return number blue Blue component
function colour.unpack_rgb(value)
end

---Pack R, G, B, A to ARGB.
---@param red number Red component
---@param green number Green component
---@param blue number Blue component
---@param alpha number Alpha component
---@return number ARGB Packed ARGB value
function colour.pack_argb(red, green, blue, alpha)
end

---Unpack R, G, B, A from ARGB.
---@param value number Packed ARGB
---@return number red Red component
---@return number green Green component
---@return number blue Blue component
---@return number alpha Alpha component
function colour.unpack_argb(value)
end

---Pack R, G, B, A to RGBA.
---@param red number Red component
---@param green number Green component
---@param blue number Blue component
---@param alpha number Alpha component
---@return number RGBA Packed RGBA value
function colour.pack_rgba(red, green, blue, alpha)
end

---Unpack R, G, B, A from RGBA.
---@param value number Packed RGBA
---@return number red Red component
---@return number green Green component
---@return number blue Blue component
---@return number alpha Alpha component
function colour.unpack_rgba(value)
end

---Convert H, S, L to R, G, B. \
---All components are [0, 1], hue is a fraction of a turn.
---@param hue number Hue component
---@param saturation number Saturation component
---@param lightness number Lightness component
---@return number red Red component
---@return number green Green component
---@return number blue Blue component
function colour.hsl_to_rgb(hue, saturation, lightness)
end

---Convert R, G, B to HSL
---@param red number Red component
---@param green number Green component
---@param blue number Blue component
---@return number hue Hue component
---@return number saturation Saturation component
---@return number lightness Lightness component
function colour.rgb_to_hsl(red, green, blue)
end

---OKlab to R, G, B. \
---https://bottosson.github.io/posts/oklab/
---@param lightness number Lightness component
---@param a number How green/red the color is
---@param b number How blue/yellow the color is
---@return number red Red component
---@return number green Green component
---@return number blue Blue component
function colour.oklab_to_rgb(lightness, a, b)
end

---R, G, B to OKlab. \
---https://bottosson.github.io/posts/oklab/
---@param red number Red component
---@param green number Green component
---@param blue number Blue component
---@return number lightness Lightness component
---@return number a How green/red the color is
---@return number b How blue/yellow the color is
function colour.rgb_to_oklab(red, green, blue)
end

---Distance of one color to another, in linear space. \
---Can be used for finding nearest colours for palette mapping.
---@param a_red number First red component
---@param a_green number First green component
---@param a_blue number First blue component
---@param b_red number Second red component
---@param b_green number Second green component
---@param b_blue number Second blue component
---@return number distance Distance from the two colors
function colour.distance_rgb(a_red, a_green, a_blue, b_red, b_green, b_blue)
end

---Distance of one color to another, in linear space. \
---Can be used for finding nearest colours for palette mapping.
---@param a number First packed RGB
---@param b number Second packed RGB
---@return number distance Distance from the two colors
function colour.distance_packed_rgb(a, b)
end

return colour
