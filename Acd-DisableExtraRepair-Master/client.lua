--Created By Acid
CreateThread(function()
    while true do
        Wait(1000)
       
        local playerPed = PlayerPedId()
        local playerVehicle = GetVehiclePedIsIn(playerPed, false)
        local VehDis = SetVehicleAutoRepairDisabled

        if playerVehicle > 0 and GetPedInVehicleSeat(playerVehicle, -1) == playerPed then 
            SetVehicleAutoRepairDisabled(playerVehicle, true) 

            if SetVehicleAutoRepairDisabled(playerVehicle, true) then
                Print('You won')
            end
        end
    end
end)
