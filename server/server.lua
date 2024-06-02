ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('dnz_fed:fed')
AddEventHandler('dnz_fed:fed', function(target)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromId(target)

    if not xPlayer or not xTarget then
        return
    end

    if xPlayer.group == "admin" then
        TriggerClientEvent('dnz_fed:fed', target)
    end
end)

RegisterCommand('fed', function(source, args, raw)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local xPlayerGroup = xPlayer.getGroup()

    if xPlayerGroup == "owner" or xPlayerGroup == "superadmin" or xPlayerGroup == "admin" then
        if args[1] then
            TriggerClientEvent('dnz_fed:fed', args[1])
            TriggerClientEvent('chat:addMessage', _src,
                { args = { '^1' .. TranslateCap('server'), TranslateCap('admin_fed_player', playerName) } })
        else
            TriggerClientEvent('dnz_fed:fed', _src)
            TriggerClientEvent('chat:addMessage', _src,
                { args = { '^1' .. TranslateCap('server'), TranslateCap('player_feded') } })
        end
    else
        TriggerClientEvent('chat:addMessage', _src,
            { args = { '^1' .. TranslateCap('server'), "You don't have permission to use this command." } })
    end
end, false)
