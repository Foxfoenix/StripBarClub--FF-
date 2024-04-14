ESX = exports["es_extended"]:getSharedObject()
--- script qui gere le job avec le SQL
local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function (xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

---- Blip stripbarclub
Citizen.CreateThread(function ()
  if Config.stripbarclub.blip then
    for _, blip in pairs(Config.stripbarclub.BlipJob) do
      local blip = AddBlipForCoord(blip.x, blip.y, blip.z)
      SetBlipSprite(blip, Config.stripbarclub.BlipIcon)
      SetBlipScale(blip, Config.stripbarclub.BlipScale)
      SetBlipColour(blip, Config.stripbarclub.BlipColor)
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Config.stripbarclub.BlipName)
      EndTextCommandSetBlipName(blip)
    end
  end
end)

---- Blip BossMenu
Citizen.CreateThread(function ()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.NameOfJob then
      for _, blip in pairs(Config.BossMenu.BossMenuCoords) do
        local blip = AddBlipForCoord(blip.x, blip.y, blip.z)
        SetBlipSprite(blip, Config.BossMenu.BlipIcon)
        SetBlipScale(blip, Config.BossMenu.BlipScale)
        SetBlipColour(blip, Config.BossMenu.BlipColor)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.BossMenu.BlipName)
        EndTextCommandSetBlipName(blip)
      end
    end  
end)

---- Blip Frigot
Citizen.CreateThread(function ()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.NameOfJob then
      for _, blip in pairs(Config.Frigot.FrigotCoords) do
        local blip = AddBlipForCoord(blip.x, blip.y, blip.z)
        SetBlipSprite(blip, Config.Frigot.BlipIcon)
        SetBlipScale(blip, Config.Frigot.BlipScale)
        SetBlipColour(blip, Config.Frigot.BlipColor)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Frigot.BlipName)
        EndTextCommandSetBlipName(blip)
      end
    end  
end)

---- Blip Dock
Citizen.CreateThread(function ()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.NameOfJob then
      for _, blip in pairs(Config.Dock.DockCoords) do
        local blip = AddBlipForCoord(blip.x, blip.y, blip.z)
        SetBlipSprite(blip, Config.Dock.BlipIcon)
        SetBlipScale(blip, Config.Dock.BlipScale)
        SetBlipColour(blip, Config.Dock.BlipColor)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Dock.BlipName)
        EndTextCommandSetBlipName(blip)
      end
    end    
end)

--- script dock
Citizen.CreateThread(function ()
  while true do
    local interval = 1000
    for _, v in pairs(Config.Dock.DockCoords) do
      if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.NameOfJob then
        local playerPos = GetEntityCoords(PlayerPedId())
        local distance = #(playerPos - v)
        if distance <= 10.0 then
          interval = 0
          DrawMarker(Config.Dock.MarkerIcon, v.x, v.y, v.z, 1.0, 0.98, 0.0, 0.0, 0.0, 0.0, 0.45, 0.45, 0.45, Config.Dock.MarkerR, Config.Dock.MarkerG, Config.Dock.MarkerB, 150, false, false, 2, true, Null, Null, false)
          if distance <= 1.5 then
            lib.showTextUI("[E] pour ramaser",{
              position = "top-center",
              icon = "hand",
              style = {
                borderRadius = 5,
                backgroundColor = "#293133",
                color = "white",
              }
            })
            if IsControlJustPressed(0, 51) then
              FreezeEntityPosition(PlayerPedId(), true)
              if lib.progressBar({
                  duration = Config.Dock.Duration,
                  label = Config.Dock.Label,
                  useWhileDead = false,
                  canCancel = true,
                  disable = {
                    car = true,
                  },
                  anim = {
                    dict = "mini@repair",
                    clip = "fixing_a_ped",
                  },
                  }) then 
                  TriggerServerEvent('stripbarclub:dock')
              end
              FreezeEntityPosition(PlayerPedId(), false)
            end
          else lib.hideTextUI()
          end
        end
      end
    end
    Wait(interval)
  end
end)

RegisterNetEvent('ox:notify')
AddEventHandler('ox:notify', function ()
  lib.notify({
    title = Config.Dock.NotifyTitle,
    description = Config.Dock.NotifySubTile,
    type = 'success',
    position = 'top',
  }) 
end)

RegisterNetEvent('ox:notify2')
AddEventHandler('ox:notify2', function ()
  lib.notify({
    title = Config.Dock.NotifyTitle2,
    description = Config.Dock.NotifySubTile2,
    type = 'error',
    position = 'top',
  }) 
end)


--- script Frigot
Citizen.CreateThread(function ()
  while true do
    local interval = 1000
    for _, v in pairs(Config.Frigot.FrigotCoords) do
      if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.NameOfJob then
        local playerPos = GetEntityCoords(PlayerPedId())
        local distance = #(playerPos - v)
        if distance <= 2 then
        interval = 100000000
        exports.ox_target:addBoxZone({
          coords = Config.Frigot.BoxZoneCoords,
          size = Config.Frigot.BoxZoneSize,
          debug = Config.Frigot.BoxZoneDebug,
          drawSprite = Config.Frigot.BoxZoneSprite,
          options = {
            {
              name = 'fridge',
              event = 'ff:fridgeMenu',
              icon = "fa-solid fa-snowflake",
              label = "fridge",
              iconColor = 'light blue',
              distance = 1,
            },
          }
        })
        end
      end
    end
    Wait(interval)
  end
end)

RegisterNetEvent('ff:fridgeMenu')
AddEventHandler('ff:fridgeMenu', function ()
  exports.ox_inventory:openInventory('stash', {id='SBC'})
end)