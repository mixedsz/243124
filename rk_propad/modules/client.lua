local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "shared.main"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "modules.nui.client"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "modules.vehicle.client"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "locales.LocaleManager"
L3_1 = L3_1(L4_1)
L4_1 = nil
L5_1 = nil
L6_1 = RegisterNetEvent
L7_1 = "rk_propad:DontTryExplotingThisNUIevent"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = L4_1
  if L1_2 then
    return
  end
  if not A0_2 then
    L1_2 = L0_1.Notify
    L2_2 = Locale
    L3_2 = "title_error"
    L2_2 = L2_2(L3_2)
    L3_2 = Locale
    L4_2 = "error_no_propad"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = IsPedInAnyVehicle
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = L0_1.Notify
    L2_2 = Locale
    L3_2 = "title_error"
    L2_2 = L2_2(L3_2)
    L3_2 = Locale
    L4_2 = "error_not_in_vehicle"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "rk_propad:checkItems"
  L3_2 = false
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = CreateObject
  L4_2 = "prop_cs_tablet"
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_1 = L3_2
  L3_2 = AttachEntityToEntity
  L4_2 = L4_1
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = GetPedBoneIndex
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = 60309
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 0.03
  L8_2 = 0.002
  L9_2 = 0.0
  L9_2 = -L9_2
  L10_2 = 10.0
  L11_2 = 160.0
  L12_2 = 0.0
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L16_2 = true
  L17_2 = 1
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = lib
  L3_2 = L3_2.playAnim
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = "amb@code_human_in_bus_passenger_idles@female@tablet@base"
  L6_2 = "base"
  L7_2 = 8.0
  L8_2 = 8.0
  L9_2 = -1
  L10_2 = 49
  L11_2 = 0.0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.msg
  L5_2 = "setConfig"
  L6_2 = {}
  L7_2 = L0_1.ServerLogo
  L6_2.serverLogo = L7_2
  L7_2 = L0_1.carBrands
  L6_2.carBrands = L7_2
  L7_2 = {}
  L8_2 = L0_1.HackDuration
  L8_2 = L8_2.ProgramKey
  L7_2.programKeyDuration = L8_2
  L8_2 = L0_1.HackDuration
  L8_2 = L8_2.EraseKeys
  L7_2.eraseKeysDuration = L8_2
  L6_2.hackDuration = L7_2
  L7_2 = L0_1.Tabs
  L6_2.tabs = L7_2
  L7_2 = L0_1.NoBrandFound
  L6_2.NoBrandFound = L7_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 100
  L3_2(L4_2)
  L3_2 = L2_1.GetVehBrand
  L3_2 = L3_2()
  L5_1 = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.msg
  L5_2 = "setVisible"
  L6_2 = {}
  L6_2.status = true
  L7_2 = L5_1
  L6_2.currentBrand = L7_2
  L6_2.hasUSB = L1_2
  L6_2.hasKeyfob = L2_2
  L7_2 = L3_1.primaryLocale
  L6_2.locale = L7_2
  L7_2 = L2_1.GetStatus
  L7_2 = L7_2()
  L6_2.vehicleStatus = L7_2
  L7_2 = L2_1.GetModifications
  L7_2 = L7_2()
  L6_2.vehicleMods = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "rk_propad:removeVehicleKeys"
function L8_1(A0_2)
  local L1_2, L2_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  L1_2 = RemoveVehKeys
  L2_2 = A0_2
  L1_2(L2_2)
end
L6_1(L7_1, L8_1)
L7_1 = L1_1
L6_1 = L1_1.cb
L8_1 = "checkBrand"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  if not L2_2 then
    L2_2 = L0_1.Notify
    L3_2 = Locale
    L4_2 = "title_error"
    L3_2 = L3_2(L4_2)
    L4_2 = Locale
    L5_2 = "error_invalid_vehicle"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A1_2
    L3_2 = {}
    L3_2.success = false
    L2_2(L3_2)
    return
  end
  L2_2 = L5_1
  L3_2 = A0_2.brand
  if L2_2 ~= L3_2 then
    L2_2 = L0_1.Notify
    L3_2 = Locale
    L4_2 = "title_error"
    L3_2 = L3_2(L4_2)
    L4_2 = Locale
    L5_2 = "error_wrong_brand"
    L6_2 = A0_2.brand
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = "error"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A1_2
    L3_2 = {}
    L3_2.success = false
    L2_2(L3_2)
    return
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.success = true
  L2_2(L3_2)
end
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.cb
L8_1 = "checkItems"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "rk_propad:checkItems"
  L4_2 = false
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.hasUSB = L2_2
  L5_2.hasKeyfob = L3_2
  L4_2(L5_2)
end
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.cb
L8_1 = "close"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  if L2_2 then
    L2_2 = ClearPedTasks
    L3_2 = PlayerPedId
    L3_2, L4_2 = L3_2()
    L2_2(L3_2, L4_2)
    L2_2 = DeleteObject
    L3_2 = L4_1
    L2_2(L3_2)
    L2_2 = nil
    L4_1 = L2_2
  end
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.cb
L8_1 = "programKey"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 or 0 == L2_2 then
    L3_2 = L0_1.Notify
    L4_2 = Locale
    L5_2 = "title_error"
    L4_2 = L4_2(L5_2)
    L5_2 = Locale
    L6_2 = "error_program_key"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = GiveVehKeys
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "Failed to give keys"
    L4_2(L5_2)
  end
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "rk_propad:removeItems"
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = L0_1.Notify
  L5_2 = Locale
  L6_2 = "title_success"
  L5_2 = L5_2(L6_2)
  L6_2 = Locale
  L7_2 = "success_key_programmed"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.success = true
  L4_2(L5_2)
end
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.cb
L8_1 = "eraseKeys"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 or 0 == L2_2 then
    L3_2 = L0_1.Notify
    L4_2 = Locale
    L5_2 = "title_error"
    L4_2 = L4_2(L5_2)
    L5_2 = Locale
    L6_2 = "error_erase_keys"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "rk_propad:eraseAllKeys"
  L5_2 = NetworkGetNetworkIdFromEntity
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L0_1.Notify
  L4_2 = Locale
  L5_2 = "title_success"
  L4_2 = L4_2(L5_2)
  L5_2 = Locale
  L6_2 = "success_keys_erased"
  L5_2 = L5_2(L6_2)
  L6_2 = "success"
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.success = true
  L3_2(L4_2)
end
L6_1(L7_1, L8_1, L9_1)
