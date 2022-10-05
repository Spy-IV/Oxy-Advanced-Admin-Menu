---------------------- [ List of options ] ----------------------
adm = {
"Teleport to waypoint",
"Kick Player",
"goto Airport",
"goto Broker ClothShop",
"goto Bike Dealership",
"goto Car Dealership",
"goto Suffolk Police Station",
"goto Broker Atm",
"goto Museum",
"goto Bank Of Liberty",
"goto Prison",
"goto Schottler Hospital",
"goto East Holland Police Station",
"goto Liberty Sanitation Depot",
"goto Port Tudor",
"goto Tuning Shop",
"goto Lawyer's Office",
"goto Burger Shot",
"goto Express Car Service",
"goto goto Unknown Island",
"Unknown Interior",
"Invisible/Visible",
"Add Money"
}
---------------------- [ List of results ] ----------------------
Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		PlayerName = GetPlayerName(GetPlayerId())
		if(PlayerName == "spy" or "admin") then -- [ ADMIN ACCOUNT NAME ]
			admin = 1
		end
        if(IsGameKeyboardKeyJustPressed(69)) then -- [ NUMLOCK ]
			if(admin == 1) then
                local menuresult = ActivateMenu("ADMIN PANNEL!", adm) 
                if(menuresult > 0) then
                    if(adm[menuresult] == "Teleport to waypoint") then -- [ If player press this option ]
						-- [ Credits K3RHNOS ]
						local blip = GetFirstBlipInfoId(8)

						if (DoesBlipExist(blip)) then
							local waypoint = GetBlipCoords(blip)
							RequestCollisionAtPosn(waypoint.x, waypoint.y, 0.0)
							LoadAllObjectsNow()
					
							for height = 1, 1000 do
								local pGroundZ, integer = GetGroundZFor3dCoord(waypoint.x, waypoint.y, height + 0.0)
					
								if pGroundZ > 0.0 then 
									SetCharCoordinates(GetPlayerChar(-1), waypoint.x, waypoint.y, pGroundZ) -- [ teleport ]
									SetCharHeading(0.0) 
									break
								end
							end
						else
							Citizen.Trace("Waypoint not found!\n")
						end
						----------------------------------------

					elseif(adm[menuresult] == "Kick Player") then
						local tempitems = {}
						for i=0,31,1 do
							if(IsNetworkPlayerActive(i)) then
								tempitems[#tempitems+1] = GetPlayerName(i)
							end
						end
						local kickmenuresult = ActivateMenu("ADMIN PANNEL!", tempitems) 
						if(kickmenuresult > 0) then
							TriggerServerEvent('requestKick', exports.oxygen:GetPlayerIdByName(tempitems[kickmenuresult]))
						end

					elseif(adm[menuresult] == "goto Airport") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 2784.69702, 425.49191, 5.81263)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Suffolk Police Station") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -406.99924, 280.21283, 13.07082)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto East Holland Police Station") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 93.29121, 1212.48938, 14.73794)
						DoScreenFadeIn(500)
		            elseif(adm[menuresult] == "goto Schottler Hospital") then
			            SetCharCoordinatesNoOffset(GetPlayerChar(-1), -1330.52869, 1278.7771, 23.3753)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Liberty Sanitation Depot") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 358.41824, -381.42102, 4.67504)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Broker Atm") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 1177.85, 146.14979, 31.65202)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Bank Of Liberty") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -15.516, -474.850, 9.15, 8.5)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Prison") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -1074.15580, -461.98000, 2.89741)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Burger Shot") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -172.42084, 291.50201, 14.86639)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Express Car Service") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 819.13135, -269.12024, 15.34274)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Broker ClothShop") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 893.73724, -442.91833, 15.86515)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "Unknown Interior") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -429.81812, 1467.39978, 23.86918+10)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Unknown Island") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -173.65739, 1080.58521, 6.28162)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Bike Dealership") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -1087.31567, 1474.12842, 24.79184)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Car Dealership") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 79.55071, 801.50702, 15.16315)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Tuning shop") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), 878.44464, -115.11142, 6.0054)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Museum") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -103.15788, 845.77307, 18.62988)
						DoScreenFadeIn(500)
					elseif(adm[menuresult] == "goto Port Tudor") then
						SetCharCoordinatesNoOffset(GetPlayerChar(-1), -1133.32727, 519.75275, 4.90075)
						DoScreenFadeIn(500)

					elseif(adm[menuresult] == "Invisible/Visible") then
						if(IsCharVisible(GetPlayerChar(-1)) == false) then
							SetCharVisible(GetPlayerChar(-1), true)
						else
							SetCharVisible(GetPlayerChar(-1), false)
						end

					elseif(adm[menuresult] == "Add Money") then
						MoneyInput = 1

                    end
                end
            end
        end
    end
end)

MoneyInput = 0
tempid = 0
local string = ""

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if(MoneyInput == 1) then

			if(IsGameKeyboardKeyJustPressed(1)) then -- [ esc ]
				MoneyInput = 0
				string = ""
			end
		end
		
		if(MoneyInput == 1) then
			DrawRect(0.5, 0.5, 0.3, 0.05, 255, 0, 0, 255)
			DrawRect(0.5, 0.5, 0.28, 0.03, 90, 90, 90, 255)
			
			if(string ~= "") then
				SetTextScale(0.200000,  0.5000000)
				SetTextDropshadow(0, 0, 0, 0, 0)
				SetTextFont(6)
				SetTextEdge(1, 0, 0, 0, 255)
				SetTextCentre(1)
				DisplayTextWithLiteralString(0.5, 0.485, "STRING", "" .. string)
			else
				SetTextScale(0.200000,  0.5000000)
				SetTextDropshadow(0, 0, 0, 0, 0)
				SetTextFont(6)
				SetTextEdge(1, 0, 0, 0, 255)
				SetTextCentre(1)
				DisplayTextWithLiteralString(0.5, 0.485, "STRING", "0")
			end
			
			for i=1,10,1 do --numbers
				if(IsGameKeyboardKeyJustPressed(i+1)) then
					if(i ~= 10) then
						string = "" .. string .. "" .. i
					else
						string = "" .. string .. "0"
					end
				end
			end

			if(IsGameKeyboardKeyJustPressed(14)) then --backspace
				string = string:sub(1, #string - 1)
			end

			if(IsGameKeyboardKeyJustPressed(28)) then --enter
				if(string ~= "") then
					MoneyInput = 0
					exports.oxygen:AddAccountMoney(string)
				end
			end

		end
	end
end)


---------------------- [ Events ] ----------------------
RegisterNetEvent('requestKick')
AddEventHandler('requestKick', function(id)
	if(GetPlayerChar(GetPlayerId()) == GetPlayerChar(id)) then
		TriggerServerEvent('kickPlayer')
	end
end)









-----------------------------------------------------------------------------------------------------------------------------------------
--------------------------------[ Dont mind this, its just Ui and mouse handling ]-------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

ActivateMenu = function(title, items)

	local menuresult = 0
	local currlist = 1
	cursor = 1
	SetCamActive(GetGameCam(), false)
	SetPlayerControl(GetPlayerId(), false)
	items[#items+1] = "~r~Cancel"
	while true do
		Wait(0)
		SetTextScale(0.1500000,  0.3000000)
		SetTextDropshadow(0, 0, 0, 0, 0)
		SetTextFont(6)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextCentre(1)
		DisplayTextWithLiteralString(0.1, 0.01, "STRING", "" .. title)
		DrawRectLeftTopCenter(0.0, 0.0, 0.265, 0.03, 0, 0, 255, 255)
		if(#items > 10) then
			local templist = {}
			local number = #items
			local finalnum = 0
			
			::retry::
			finalnum = finalnum + 1
			number = number - 10
			if(number > 10) then
				goto retry
			else
				finalnum = finalnum + 1
			end
			
			for i=1,finalnum,1 do
				templist[i] = {}
				for j=1,10,1 do
					if(items[10*(i-1)+j] ~= nil) then
						templist[i][j] = items[10*(i-1)+j]
					end
				end
			end
			
			local sep = 10
			for i=1,#templist,1 do
				if(currlist == i) then
					for j=1,#templist[i],1 do
						SetTextScale(0.1500000,  0.3000000)
						SetTextDropshadow(0, 0, 0, 0, 0)
						SetTextFont(6)
						SetTextEdge(1, 0, 0, 0, 255)
						--SetTextWrap(0.0, 0.3)
						SetTextCentre(1)
						DisplayTextWithLiteralString(0.5, 0.71, "STRING", "Mouse Wheel to scroll - Page: " .. currlist .. "/" .. #templist)
						
						DrawRectLeftTopCenter(0.0, 0.03+0.36/sep*(j-1), 0.265, 0.36/sep, 0, 0, 0, 120)
						SetTextScale(0.1500000,  0.3000000)
						SetTextDropshadow(0, 0, 0, 0, 0)
						SetTextEdge(1, 0, 0, 0, 255)
						DisplayTextWithLiteralString(0.02, 0.03+0.36/sep*(j-1)+0.01, "STRING", "" .. templist[i][j])
						if(IsCursorInAreaLeftTopCenter(0.0, 0.03+0.36/sep*(j-1), 0.265, 0.36/sep)) then
							DrawRectLeftTopCenter(0.0, 0.03+0.36/sep*(j-1), 0.265, 0.36/sep, 0, 0, 0, 150) 
							if(IsMouseButtonJustPressed(1)) then
								if(10*(i-1)+j ~= #items) then
									menuresult = 10*(i-1)+j
								end
								cursor = 0
								SetCamActive(GetGameCam(), true)
								SetPlayerControl(GetPlayerId(), true)
								return menuresult
							end
						end
					end
				end
			end
			if(GetMouseWheel(_i) ~= 0) then
				if(GetMouseWheel(_i) ~= 127) then
					if(currlist < #templist) then
						currlist = currlist + 1
					end
				else
					if(currlist > 1) then
						currlist = currlist - 1
					end
				end
			end
		else
			local sep = 0
			if(#items <= 10) then
				sep = 10
			else
				sep = #items
			end
			for i=1,#items,1 do
				DrawRectLeftTopCenter(0.0, 0.03+0.36/sep*(i-1), 0.265, 0.36/sep, 0, 0, 0, 120)
				SetTextScale(0.1500000,  0.3000000)
				SetTextDropshadow(0, 0, 0, 0, 0)
				SetTextEdge(1, 0, 0, 0, 255)
				DisplayTextWithLiteralString(0.02, 0.03+0.36/sep*(i-1)+0.01, "STRING", "" .. items[i])
				if(IsCursorInAreaLeftTopCenter(0.0, 0.03+0.36/sep*(i-1), 0.265, 0.36/sep)) then
					DrawRectLeftTopCenter(0.0, 0.03+0.36/sep*(i-1), 0.265, 0.36/sep, 0, 0, 0, 150)
					if(IsMouseButtonJustPressed(1)) then
						if(i ~= #items) then
							menuresult = i
						end
						cursor = 0
						SetCamActive(GetGameCam(), true)
						SetPlayerControl(GetPlayerId(), true)
						return menuresult
					end
				end
			end
		end
	end
end

DrawRectLeftTopCenter = function(x, y, width, height, r, g, b, a)
	DrawRect(x+width/2, y+height/2, width, height, r, g, b, a)
end

DrawCurvedWindowLeftTopCenter = function(x, y, width, height, a)
	DrawCurvedWindow(x+width/2, y+height/2, width, height, a)
end


cursor = 0
local mouseX = 0
local mouseY = 0

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if(not HasStreamedTxdLoaded("cursor")) then
			RequestStreamedTxd("cursor")
			while not HasStreamedTxdLoaded("cursor") do
				RequestStreamedTxd("cursor")
				Citizen.Wait(0)
			end
			cur = GetTextureFromStreamedTxd("cursor", "cursor")
		end
		if(cursor == 1) then
			mouseX,mouseY = GetMousePosition()
			if(mouseX>0.99 or mouseY>0.99) then
			
			else
				if(HasStreamedTxdLoaded("cursor")) then
					DrawSprite(cur, mouseX, mouseY, 0.02, 0.04, 0.0, 255, 255, 255, 255)
				else
					DrawRect(mouseX, mouseY, 0.01, 0.02, 255, 255, 255, 255)
				end
			end
		end
	end
end)

IsCursorInArea = function(x, y, width, height)
	local point1x = x - width/2
	local point1y = y - height/2
	local point2x = x + width/2
	local point2y = y + height/2
	if(mouseX>=point1x and mouseX<=point2x and mouseY>=point1y and mouseY<=point2y) then
		return true
	else
		return false
	end
end

IsCursorInAreaLeftTopCenter = function(x, y, width, height)
	local point1x = x
	local point1y = y
	local point2x = x + width
	local point2y = y + height
	if(mouseX>=point1x and mouseX<=point2x and mouseY>=point1y and mouseY<=point2y) then
		return true
	else
		return false
	end
end