---@meta

---@class batteries
local batteries = {}

batteries.class = require("batteries.class")

batteries.assert = require("batteries.assert")

--extension libraries

batteries.mathx = require("batteries.mathx")
batteries.tablex = require("batteries.tablex")
batteries.stringx = require("batteries.stringx")

--sorting routines

batteries.sort = require("batteries.sort")

batteries.functional = require("batteries.functional")

--collections

batteries.sequence = require("batteries.sequence")
batteries.set = require("batteries.set")

--geom

batteries.vec2 = require("batteries.vec2")
batteries.vec3 = require("batteries.vec3")
batteries.intersect = require("batteries.intersect")

batteries.timer = require("batteries.timer")
batteries.pubsub = require("batteries.pubsub")
batteries.state_machine = require("batteries.state_machine")
batteries.async = require("batteries.async")
batteries.manual_gc = require("batteries.manual_gc")
batteries.colour = require("batteries.colour")
batteries.pretty = require("batteries.pretty")
batteries.measure = require("batteries.measure")
batteries.make_pooled = require("batteries.make_pooled")

---Export all modules globally if required
function batteries:export()
end

return batteries
