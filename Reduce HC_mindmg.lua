local set = gui.SetValue
local get = gui.GetValue
local creg = callbacks.Register
local button_held = input.IsButtonDown
local asniperhcslider = gui.Slider(gui.Reference("RAGE", "ACCURACY", "Weapon"), "asniperhcslider", "New HC Slider", 0, 1, 100)
local asnipermindmgslider = gui.Slider(gui.Reference("RAGE", "ACCURACY", "Weapon"), "asnipermindmgslider", "New MinDmg Slider", 0, 1, 100)
local key = "mouse4"

-- cache old hc/dmg to restore later
local old_hc = get("rbot.accuracy.weapon.asniper.hitchance")
local old_dmg = get("rbot.accuracy.weapon.asniper.mindmg")

-- the amount to adjust
local new_hc = get("asniperhcslider")
local new_dmg = get("asnipermindmgslider")

function reduce()
-- amount to display
local hc = get("rbot.accuracy.weapon.asniper.hitchance")
local dmg = get("rbot.accuracy.weapon.asniper.mindmg")

    if button_held(key) then
        draw.Color(0,255,0,255);
        draw.Text(10,615, "Accuracy Mode: Reduced")
        
        draw.Color(255,255,255,255)
        draw.Text(10, 630, "Hitchance:  " .. math.floor(hc))
        draw.Text(10, 645, "Minimum DMG:  " .. math.floor(dmg))
        
        set("rbot.accuracy.weapon.asniper.hitchance", new_hc)
        set("rbot.accuracy.weapon.asniper.mindmg", new_dmg)
        
    else
        draw.Color(255,255,255,255)
        draw.Text(10,615, "Accuracy Mode: Normal")
        draw.Color(255,255,255,255)
        
        draw.Text(10, 630, "Hitchance:  " .. math.floor(old_hc))
        draw.Text(10, 645, "Minimum DMG:  " .. math.floor(old_dmg))
        
        set("rbot.accuracy.weapon.asniper.hitchance", old_hc)
        set("rbot.accuracy.weapon.asniper.mindmg", old_dmg)
    end
end

creg("Draw", "reduce", reduce)




 