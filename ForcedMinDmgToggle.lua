local An_1 = gui.Reference("RAGE", "MAIN", "Extra")
local ForcedMinDmgkey = gui.Keybox( An_1, "ForcedMinDmgbind", "ForcedMinDmgKeyBind", 0 )


    local function DoubleTapActive()
        if ForcedMinDmgkey:GetValue() ~= 0 then
            if input.IsButtonDown(ForcedMinDmgkey:GetValue()) then
                return true
            else
            return false
            end
        end
    end
    
	
	local function Main()
    w, h = draw.GetScreenSize()
    draw.Color(112, 255, 0)

        if DoubleTapActive() == true then
            draw.Text(w/2 - 942, h/2 - 45, "Forced HitChance/MinDmg")
            draw.TextShadow(w/2 - 942, h/2 -45, "Forced HitChance/MinDmg")
            gui.SetValue('rbot.accuracy.weapon.asniper.hitchance', 42)
            gui.SetValue('rbot.accuracy.weapon.scout.hitchance', 61)
            gui.SetValue('rbot.accuracy.weapon.sniper.hitchance', 80)
            gui.SetValue('rbot.accuracy.weapon.asniper.mindmg', 8)
            gui.SetValue('rbot.accuracy.weapon.scout.mindmg', 75)
            gui.SetValue('rbot.accuracy.weapon.sniper.mindmg', 80)
        else
            draw.Text(w/2 - 942, h/2 - 45, "Default HitChance/MinDmg")
            draw.TextShadow(w/2 - 942, h/2 -45, "Default HitChance/MinDmg")
            gui.SetValue('rbot.accuracy.weapon.asniper.hitchance', 69)
            gui.SetValue('rbot.accuracy.weapon.scout.hitchance', 85)
            gui.SetValue('rbot.accuracy.weapon.sniper.hitchance', 90)
            gui.SetValue('rbot.accuracy.weapon.asniper.mindmg', 22)
            gui.SetValue('rbot.accuracy.weapon.scout.mindmg', 90)
            gui.SetValue('rbot.accuracy.weapon.sniper.mindmg', 97)        
		end
    end

callbacks.Register( "Draw", "ForcedMinDmg", Main);
