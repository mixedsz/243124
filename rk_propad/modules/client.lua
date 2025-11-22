local config = require("shared.main")
local nui = require("modules.nui.client")
local vehicleFunctions = require("modules.vehicle.client")
local localeManager = require("locales.LocaleManager")

local tabletObject = nil
local currentBrand = nil

RegisterNetEvent("rk_propad:DontTryExplotingThisNUIevent", function(hasPropad)
    if tabletObject then
        return
    end

    if not hasPropad then
        config.Notify(Locale("title_error"), Locale("error_no_propad"), "error")
        return
    end

    local isInVehicle = IsPedInAnyVehicle(cache.ped, false)
    if not isInVehicle then
        config.Notify(Locale("title_error"), Locale("error_not_in_vehicle"), "error")
        return
    end

    local hasUSB, hasKeyfob = lib.callback.await("rk_propad:checkItems", false)

    -- Create and attach tablet prop
    tabletObject = CreateObject("prop_cs_tablet", 0, 0, 0, true, true, true)
    AttachEntityToEntity(
        tabletObject,
        cache.ped,
        GetPedBoneIndex(cache.ped, 60309),
        0.03,
        0.002,
        -0.0,
        10.0,
        160.0,
        0.0,
        true,
        true,
        false,
        true,
        1,
        true
    )

    -- Play tablet animation
    lib.playAnim(
        cache.ped,
        "amb@code_human_in_bus_passenger_idles@female@tablet@base",
        "base",
        8.0,
        8.0,
        -1,
        49,
        0.0,
        false,
        false,
        false
    )

    -- Enable NUI focus
    SetNuiFocus(true, true)

    -- Send config to NUI
    nui:msg("setConfig", {
        serverLogo = config.ServerLogo,
        carBrands = config.carBrands,
        hackDuration = {
            programKeyDuration = config.HackDuration.ProgramKey,
            eraseKeysDuration = config.HackDuration.EraseKeys
        },
        tabs = config.Tabs,
        NoBrandFound = config.NoBrandFound
    })

    Wait(100)

    -- Get current vehicle brand
    currentBrand = vehicleFunctions.GetVehBrand()

    -- Set NUI visibility
    nui:msg("setVisible", {
        status = true,
        currentBrand = currentBrand,
        hasUSB = hasUSB,
        hasKeyfob = hasKeyfob,
        locale = localeManager.primaryLocale,
        vehicleStatus = vehicleFunctions.GetStatus(),
        vehicleMods = vehicleFunctions.GetModifications()
    })
end)

RegisterNetEvent("rk_propad:removeVehicleKeys", function(vehicle)
    if not vehicle or vehicle == 0 then
        return
    end
    RemoveVehKeys(vehicle)
end)

-- NUI Callback: Check brand compatibility
nui:cb("checkBrand", function(data, cb)
    if not currentBrand then
        config.Notify(Locale("title_error"), Locale("error_invalid_vehicle"), "error")
        cb({ success = false })
        return
    end

    if currentBrand ~= data.brand then
        config.Notify(Locale("title_error"), Locale("error_wrong_brand", data.brand), "error")
        cb({ success = false })
        return
    end

    cb({ success = true })
end)

-- NUI Callback: Check items
nui:cb("checkItems", function(data, cb)
    local hasUSB, hasKeyfob = lib.callback.await("rk_propad:checkItems", false)
    cb({
        hasUSB = hasUSB,
        hasKeyfob = hasKeyfob
    })
end)

-- NUI Callback: Close tablet
nui:cb("close", function(data, cb)
    if tabletObject then
        ClearPedTasks(PlayerPedId())
        DeleteObject(tabletObject)
        tabletObject = nil
    end

    SetNuiFocus(false, false)
    cb("ok")
end)

-- NUI Callback: Program key
nui:cb("programKey", function(data, cb)
    local vehicle = GetVehiclePedIsIn(cache.ped, false)
    
    if not vehicle or vehicle == 0 then
        config.Notify(Locale("title_error"), Locale("error_program_key"), "error")
        cb({ success = false })
        return
    end

    local success = GiveVehKeys(vehicle)
    if not success then
        print("Failed to give keys")
    end

    lib.callback.await("rk_propad:removeItems", false)
    
    config.Notify(Locale("title_success"), Locale("success_key_programmed"), "success")
    cb({ success = true })
end)

-- NUI Callback: Erase keys
nui:cb("eraseKeys", function(data, cb)
    local vehicle = GetVehiclePedIsIn(cache.ped, false)
    
    if not vehicle or vehicle == 0 then
        config.Notify(Locale("title_error"), Locale("error_erase_keys"), "error")
        cb({ success = false })
        return
    end

    TriggerServerEvent("rk_propad:eraseAllKeys", NetworkGetNetworkIdFromEntity(vehicle))
    
    config.Notify(Locale("title_success"), Locale("success_keys_erased"), "success")
    cb({ success = true })
end)

-- Export for ox_inventory item usage
exports('usePropad', function(data, slot)
    local hasPropad = exports.ox_inventory:Search('count', 'propad')
    if hasPropad and hasPropad > 0 then
        TriggerEvent("rk_propad:DontTryExplotingThisNUIevent", true)
    else
        TriggerEvent("rk_propad:DontTryExplotingThisNUIevent", false)
    end
end)