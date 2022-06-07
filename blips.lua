local blips = {
 
    -- the lost
     --{title="The lost house", colour=46, id=378, x=969.28, y=-121.36, z=74.35},
     
     --mafia
     {title="Mafia house", colour=46, id=378, x=-1917.8, y=2052.84, z=140.74},
     
     -- marabunta
     {title="Marabunta house", colour=46, id=378, x=1402.36, y=1117.49, z=114.84},  
     
     -- cartel
     {title="Cartel house", colour=46, id=378, x=-1527.79, y=87.35, z=56.6},  
  
     -- Familia
     {title="Familia house", colour=46, id=378, x=-96.86, y=994.26, z=235.78}, 
     
  }
  
  Citizen.CreateThread(function()
  
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
      -------------------------------------------------------------
      RadiusBlip = AddBlipForRadius(info.x, info.y, info.z, 100.0)
      SetBlipRotation(RadiusBlip, 0)
      SetBlipAlpha(RadiusBlip, 100)
      SetBlipColour(RadiusBlip, 1)
      --------------------------------------------------------------
        
    end
  end)