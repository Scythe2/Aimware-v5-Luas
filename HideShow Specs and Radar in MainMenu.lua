--Hide Spectators in MainMenu

callbacks.Register("Draw", function()
  if (entities.GetLocalPlayer() ~= nil and engine.GetServerIP() ~= nil and engine.GetMapName() ~= nil) then
      gui.SetValue("misc.showspec", true) 
  else
      gui.SetValue("misc.showspec", false) 
  end
end)

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#


--Hide Radar in MainMenu

callbacks.Register("Draw", function()
  if (entities.GetLocalPlayer() ~= nil and engine.GetServerIP() ~= nil and engine.GetMapName() ~= nil) then
      gui.SetValue("esp.other.radar", 1) 
  else
      gui.SetValue("esp.other.radar", 0) 
  end
end)