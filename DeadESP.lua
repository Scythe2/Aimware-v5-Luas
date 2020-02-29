local toggle = true
callbacks.Register("Draw", function()
   local local_player = entities.GetLocalPlayer()
   if (local_player == NULL or local_player == nil) then
       return
   else
       if (input.IsButtonReleased(78)) then
           toggle = not toggle
       end
       if (local_player:IsAlive()) then
           gui.SetValue("esp.chams.enemy.occluded", 0)
		   gui.SetValue("esp.chams.enemy.overlay", 0)
           gui.SetValue("esp.chams.enemy.visible", 4)
           gui.SetValue("esp.overlay.enemy.health.healthbar", 0)
           gui.SetValue("esp.overlay.enemy.weapon", 0)
           gui.SetValue("esp.overlay.enemy.name", 0)
           gui.SetValue("esp.overlay.enemy.box", 0)
           gui.SetValue("esp.overlay.enemy.precision", 0)
           gui.SetValue("esp.overlay.enemy.scoped", 0)
           gui.SetValue("esp.overlay.enemy.planting", 0)
           gui.SetValue("esp.overlay.enemy.flashed", 0)
           gui.SetValue("esp.overlay.enemy.reloading", 0)
           gui.SetValue("esp.overlay.enemy.defusing", 0)
      else
           if (local_player:IsAlive()) then
               local w, h = draw.GetScreenSize()
               draw.SetFont(draw.CreateFont("Tahoma", 25, 100))
               draw.Color(128, 0, 0, 255)
               draw.TextShadow(415, 1046, "On")
           end
           gui.SetValue("esp.chams.enemy.occluded", 3)
		   gui.SetValue("esp.chams.enemy.overlay", 0)
           gui.SetValue("esp.chams.enemy.visible", 4)
           gui.SetValue("esp.overlay.enemy.health.healthbar", 1)
           gui.SetValue("esp.overlay.enemy.weapon", 1)
           gui.SetValue("esp.overlay.enemy.name", 1)
           gui.SetValue("esp.overlay.enemy.box", 1)
           gui.SetValue("esp.overlay.enemy.precision", 1)
       end
   end
end)