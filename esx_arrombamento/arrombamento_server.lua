ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local win1 = 60  -- bilhete de loteria
local win2 = 120
local win3 = 240

-- locales --
local winText = "Você ganhou ~g~R$"
local ticketEmpty = "Seu bilhete esta ~r~vazio"
-------------

RegisterServerEvent('esx_arrombamento:Add')
AddEventHandler('esx_arrombamento:Add', function(item, qtty)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.addInventoryItem(item, qtty)
end)

RegisterServerEvent('esx_arrombamento:Remove')
AddEventHandler('esx_arrombamento:Remove', function(item, qtty)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.removeInventoryItem(item, qtty)
end)

ESX.RegisterUsableItem('lotteryticket', function(source)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local rndm = math.random(1,11)
	xPlayer.removeInventoryItem('lotteryticket', 1)

	if rndm == 1 then              -- WIN 1
		xPlayer.addMoney(win1)
		TriggerClientEvent('esx_arrombamento:Sound', src, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
		TriggerClientEvent('esx:showNotification', src, winText .. win1)
	end

	if rndm == 2 then              -- WIN 2
		xPlayer.addMoney(win2)
		TriggerClientEvent('esx_arrombamento:Sound', src, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
		TriggerClientEvent('esx:showNotification', src, winText .. win2)
	end

	if rndm == 3 then              -- WIN 3
		xPlayer.addMoney(win3)
		TriggerClientEvent('esx_arrombamento:Sound', src, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
		TriggerClientEvent('esx:showNotification', src, winText .. win3)
	end

	if rndm >= 4 then
		TriggerClientEvent('esx_arrombamento:Sound', src, "NO", "HUD_FRONTEND_DEFAULT_SOUNDSET")
		TriggerClientEvent('esx:showNotification', src, ticketEmpty)
	end

end)
