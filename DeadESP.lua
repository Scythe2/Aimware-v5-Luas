local toggle = true
callbacks.Register("Draw", function()
    local local_player = entities.GetLocalPlayer()
    if (local_player == nil) then
        return
    else
        if (input.IsButtonReleased(78)) then		-- N key toggles DeadESP on/off at all. If u want another key change number. 
							--(if u need help to find numbers of keys use: https://keycode.info/)
            toggle = not toggle
        end
        if (local_player:IsAlive() and not toggle) then
            gui.SetValue("esp.overlay.enemy.name", false)
            gui.SetValue("esp.chams.enemy.occluded", false)
            gui.SetValue("esp.overlay.enemy.scoped", false)
            gui.SetValue("esp.overlay.enemy.reloading", false)
            gui.SetValue("esp.overlay.enemy.health.healthnum", false)
            gui.SetValue("esp.overlay.enemy.health", false)
            gui.SetValue("esp.overlay.enemy.weapon", "0")
            gui.SetValue("esp.overlay.enemy.box", "0")
            gui.SetValue("esp.overlay.enemy.hasdefuser", "0")
            gui.SetValue("esp.overlay.enemy.hasc4", "0")
        else
            if (local_player:IsAlive()) then
                local w, h = draw.GetScreenSize()
                draw.SetFont(draw.CreateFont("Tahoma", 25, 100))
                draw.Color(128, 0, 0, 255)
                draw.TextShadow(335, 1045, "Visuals On")
            end
            gui.SetValue("esp.overlay.enemy.name", true)
            gui.SetValue("esp.chams.enemy.occluded", 3)
            gui.SetValue("esp.overlay.enemy.scoped", 1)
            gui.SetValue("esp.overlay.enemy.reloading", 1)
            gui.SetValue("esp.overlay.enemy.health.healthnum", 1)
            gui.SetValue("esp.overlay.enemy.weapon", "1")
            gui.SetValue("esp.overlay.enemy.box", "1")
            gui.SetValue("esp.overlay.enemy.hasdefuser", "1")
            gui.SetValue("esp.overlay.enemy.hasc4", "1")
        end
    end
end)
