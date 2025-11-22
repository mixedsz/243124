---@diagnostic disable: duplicate-set-field, lowercase-global

if GetResourceState('wasabi_carlock') ~= 'started' then return end

GiveVehKeys = function(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    exports.wasabi_carlock:GiveKey(plate)
end

RemoveVehKeys = function(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    exports.wasabi_carlock:RemoveKey(plate)
end
