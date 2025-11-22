---@diagnostic disable: duplicate-set-field, lowercase-global

if GetResourceState('mk_vehiclekeys') ~= 'started' then return end

GiveVehKeys = function(vehicle)
    exports["mk_vehiclekeys"]:AddKey(vehicle)
end

RemoveVehKeys = function(vehicle)
    exports["mk_vehiclekeys"]:RemoveKey(vehicle)
end