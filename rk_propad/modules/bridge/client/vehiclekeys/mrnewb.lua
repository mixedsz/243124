---@diagnostic disable: duplicate-set-field, lowercase-global

if GetResourceState('MrNewbVehicleKeys') ~= 'started' then return end

GiveVehKeys = function(vehicle)
    exports.MrNewbVehicleKeys:GiveKeys(vehicle)
end

RemoveVehKeys = function(vehicle)
    exports.MrNewbVehicleKeys:RemoveKeys(vehicle)
end
