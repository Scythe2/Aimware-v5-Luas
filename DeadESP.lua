-- DeadESP
local w,h = 0,0
local rage_ref_extra = gui.Reference("RAGEBOT", "AIMBOT", "AUTOMATION");
local changeKey = gui.Keybox(rage_ref_extra, "wallhackkey", "Wallhack key", 18); 


local function ESP_Always_OnDead( ) 

w, h = draw.GetScreenSize()

   if entities.GetLocalPlayer() == NULL then
  return
	end


	if entities.GetLocalPlayer():IsAlive() == true and (input.IsButtonDown(changeKey:GetValue())) then			
			
			draw.Color(128,0,0,255)
			draw.TextShadow(w/2,h/2, "Visuals On")
			gui.SetValue("esp.chams.enemy.occluded","4")		

	else
		if entities.GetLocalPlayer():IsAlive() == true then
            
			gui.SetValue("esp.overlay.enemy.name", false)
            gui.SetValue("esp.chams.enemy.occluded", false)
            gui.SetValue("esp.overlay.enemy.scoped", false)
            gui.SetValue("esp.overlay.enemy.reloading", false)
            gui.SetValue("esp.overlay.enemy.health.healthnum", false)
            gui.SetValue("esp.overlay.enemy.health.healthbar", false)
            gui.SetValue("esp.overlay.enemy.weapon", false)
            gui.SetValue("esp.overlay.enemy.box", false)
            gui.SetValue("esp.overlay.enemy.hasdefuser", false)
            gui.SetValue("esp.overlay.enemy.hasc4", false)
			gui.SetValue("esp.chams.enemy.overlay", false)
			gui.SetValue("esp.overlay.weapon.ammo", false)

	elseif entities.GetLocalPlayer():IsAlive() == false then

            gui.SetValue("esp.overlay.enemy.name", true)
            gui.SetValue("esp.chams.enemy.occluded", "4")
            gui.SetValue("esp.overlay.enemy.scoped", true)
            gui.SetValue("esp.overlay.enemy.reloading", true)
            gui.SetValue("esp.overlay.enemy.health.healthnum", true)
            gui.SetValue("esp.overlay.enemy.health.healthbar", true)
			gui.SetValue("esp.overlay.enemy.weapon", true)
            gui.SetValue("esp.overlay.enemy.box", true)
            gui.SetValue("esp.overlay.enemy.hasdefuser", true)
            gui.SetValue("esp.overlay.enemy.hasc4", true)
			gui.SetValue("esp.chams.enemy.overlay", Wireframe)
end
end			
end	
callbacks.Register( "Draw", "espalwaysondead", ESP_Always_OnDead );

-- End DeadESP