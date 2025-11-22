---@diagnostic disable: duplicate-set-field, lowercase-global

if GetResourceState('qs-vehiclekeys') ~= 'started' then return end

GiveVehKeys = function(vehicle)
    local model = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
    local plate = GetVehicleNumberPlateText(vehicle)
    exports['qs-vehiclekeys']:GiveKeys(plate, model, true)
end

RemoveVehKeys = function(vehicle)
    local model = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
    local plate = GetVehicleNumberPlateText(vehicle)
    exports['qs-vehiclekeys']:RemoveKeys(plate, model)
end
