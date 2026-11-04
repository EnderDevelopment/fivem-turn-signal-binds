local turnSignalState = {
    left = false,
    right = false
}

RegisterCommand('leftturn', function()
    turnSignalState.left = not turnSignalState.left
    if turnSignalState.left then
        SetVehicleIndicatorLights(GetVehiclePedIsIn(PlayerPedId(), false), 1, true)
    else
        SetVehicleIndicatorLights(GetVehiclePedIsIn(PlayerPedId(), false), 1, false)
    end
end, false)

RegisterCommand('rightturn', function()
    turnSignalState.right = not turnSignalState.right
    if turnSignalState.right then
        SetVehicleIndicatorLights(GetVehiclePedIsIn(PlayerPedId(), false), 0, true)
    else
        SetVehicleIndicatorLights(GetVehiclePedIsIn(PlayerPedId(), false), 0, false)
    end
end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 174) then -- Left arrow key
            ExecuteCommand('leftturn')
        elseif IsControlJustPressed(1, 175) then -- Right arrow key
            ExecuteCommand('rightturn')
        end
    end
end)
