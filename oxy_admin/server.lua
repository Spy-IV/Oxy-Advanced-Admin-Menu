RegisterServerEvent('requestKick')
AddEventHandler('requestKick', function(id)
	TriggerClientEvent('requestKick', -1, id)
end)


RegisterServerEvent('kickPlayer')
AddEventHandler('kickPlayer', function()
	DropPlayer(source, "Kicked")
end)