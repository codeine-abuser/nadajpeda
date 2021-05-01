RegisterNetEvent('dzieciak')
AddEventHandler('dziecak', function()
local ped = 'ID_PEDA'
local hash = GetHashKey(ped)
	RequestModel(hash)
	while not HasModelLoaded(hash)
			do RequestModel(hash)
				Citizen.Wait(0)
			end	
			SetPlayerModel(PlayerId(), hash)
		end)
TriggerEvent('chat:addSuggestion', '/nadajpeda', 'Nadaj peda', {
    { name="id", help="ID gracza" },
    { name="Model", help="pedy; dzieciak" }
})
