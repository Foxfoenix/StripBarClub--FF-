ESX = exports["es_extended"]:getSharedObject()

TriggerEvent('esx_phone:registerNumber', 'stripbarclub', 'Alerte Club de Strip', true, true) --- Si vous avez un GCPHONE
TriggerEvent('esx_society:registerSociety', 'stripbarclub', 'stripbarclub', 'society_stripbarclub', 'society_stripbarclub', 'society_stripbarclub', {type = 'public'})

RegisterNetEvent('stripbarclub:dock')
AddEventHandler('stripbarclub:dock', function ()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local item = Config.Recolte.RecolteItem
    local count = Config.Recolte.RecolteCount
    if xPlayer.canCarryItem(item, count) then
        xPlayer.addInventoryItem(item, count)
        TriggerClientEvent('ox:notify', _src)
    else
        TriggerClientEvent('ox:notify2', _src)
    end
end)

local stash1 = {
    id = "SBC",
    lable = "Strip Bar Club",
    slots = 50,
    weight = 500000,
    owner = {['stripbarclub'] = 1},
}

AddEventHandler('onServerResourceStart', function (resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        exports.ox_inventory:RegisterStash(stash1.id, stash1.label, stash1.slots, stash1.weight, stash1.owner)
    end
end)
