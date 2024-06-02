ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('dnz_fed:fed')
AddEventHandler('dnz_fed:fed', function()
    -- restore hunger & thirst
    TriggerEvent('esx_status:set', 'hunger', 1000000)
    TriggerEvent('esx_status:set', 'thirst', 1000000)
    ESX.ShowNotification(TranslateCap('player_feded'), 'success')
end)

TriggerEvent('chat:addSuggestion', '/fed', 'Feed and hydrate yourself or player by ID.', {
    { name = 'playerId', help = 'Player ID' }
})
