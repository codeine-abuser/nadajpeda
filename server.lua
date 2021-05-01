ESX = nil
local Webhook = 'webhooklink'

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('nadajpeda', function(source, args)
	id = args[1]
	ped = args[2]
	if ped == 'dzieciak' then
		TriggerClientEvent('dzieciak', id)
		PerformHttpRequest(Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = 'damo', content = '**pedy**: `ID:` **'..source..'** *nadal peda dla* `ID:` **'..id..'**\n```ped: dzieciak ```'}), { ['Content-Type'] = 'application/json' })			
	end
	end)
