---@meta

---Dead-simple publish-subscribe message bus
---@class batteries.pubsub : batteries.class
---@operator call() : batteries.pubsub
local pubsub = {}

---Creates a new pubsub bus.
---@return self
function pubsub:new()
end

---Publish an event, with optional arguments. \
---Notifies direct subscribers and those subscribed to `"everything"`
---@param event string The name of the event
---@vararg any The arguments to pass
function pubsub:publish(event, ...)
end

---Subscribe to a named event. \
---When @event is `"everything"`, @callback will receive event names as the first argument
---@param event string The name of an event or `"everything"`
---@param callback function The callback to call when notified
function pubsub:subscribe(event, callback)
end

---Subscribe to an event and automatically unsubscribe once called. \
---When @event is `"everything"`, @callback will receive event names as the first argument
---@param event string The name of an event or `"everything"`
---@param callback function The callback to call when notified
function pubsub:subscribe_once(event, callback)
end

---Unsubscribe from an event. \
---You will need to keep function callback references around to unbind them.
---@param event string The name of an event or `"everything"`
---@param callback function The callback to unbind
function pubsub:unsubscribe(event, callback)
end

---Check if there is a subscriber for a given event
---@param event string The name of the event
---@return boolean has_subscriber Whether the event has a subscriber
function pubsub:has_subscriber(event)
end

return pubsub