-- indexes of last paintkit available for each weapon
-- this may change after new skins are introduced to the game
ak47 = 28
aug = 22
awp = 24
bizon = 24
cz75a = 21
deagle = 24
elite = 21
famas = 18
fiveseven = 24
g3sg1 = 20
galilar = 22
glock = 26
hkp2000 = 21
m249 = 10
m4a1 = 26
m4a1_silencer = 23
mac10 = 24
mag7 = 20
mp5sd = 3
mp7 = 22
mp9 = 22
negev = 13
nova = 25
p250 = 31
p90 = 24
revolver = 8
sawedoff = 24
scar20 = 17
sg556 = 20 -- sg553
ssg08 = 16
tec9 = 26
ump45 = 23
usp_silencer = 21
xm1014 = 21

bayonet = 33
butterfly = 23
falchion = 23
flipknife = 33
gut = 33
gypsy_jackknife = 11
karambit = 33
m9_bayonet = 33
push = 23
stiletto = 11
survival_bowie = 23
tactical = 23
ursus = 11
widowmaker = 11

function main(event)
 
    -- if skinchanger is disabled, dont do anything
    if (gui.GetValue("esp.skins.enable") == 0) then
        return
    end
 
    -- on round start
    if (event:GetName() == 'round_start') then
   
        -- shuffle gun paintkits
        gui.SetValue("skin.add weapon_ak47", math.random(0, ak47))
        gui.SetValue("skin.add weapon_aug", math.random(0, aug))
        gui.SetValue("skin.add weapon_awp", math.random(0, awp))
        gui.SetValue("skin.add weapon_bizon", math.random(0, bizon))
        gui.SetValue("skin.add weapon_cz75a", math.random(0, cz75a))
        gui.SetValue("skin.add weapon_deagle", math.random(0, deagle))
        gui.SetValue("skin.add weapon_elite", math.random(0, elite))
        gui.SetValue("skin.add weapon_famas", math.random(0, famas))
        gui.SetValue("skin.add weapon_fiveseven", math.random(0, fiveseven))
        gui.SetValue("skin.add weapon_g3sg1", math.random(0, g3sg1))
        gui.SetValue("skin.add weapon_galilar", math.random(0, galilar))
        gui.SetValue("skin.add weapon_glock", math.random(0, glock))
        gui.SetValue("skin.add weapon_hkp2000", math.random(0, hkp2000))
        gui.SetValue("skin.add weapon_m249", math.random(0, m249))
        gui.SetValue("skin.add weapon_m4a1", math.random(0, m4a1))
        gui.SetValue("skin.add weapon_m4a1_silencer", math.random(0, m4a1_silencer))
        gui.SetValue("skin.add weapon_mac10", math.random(0, mac10))
        gui.SetValue("skin.add weapon_mag7", math.random(0, mag7))
        gui.SetValue("skin.add weapon_mp5sd", math.random(0, mp5sd))
        gui.SetValue("skin.add weapon_mp7", math.random(0, mp7))
        gui.SetValue("skin.add weapon_mp9", math.random(0, mp9))
        gui.SetValue("skin.add weapon_negev", math.random(0, negev))
        gui.SetValue("skin.add weapon_nova", math.random(0, nova))
        gui.SetValue("skin.add weapon_p250", math.random(0, p250))
        gui.SetValue("skin.add weapon_p90", math.random(0, p90))
        gui.SetValue("skin.add weapon_revolver", math.random(0, revolver))
        gui.SetValue("skin.add weapon_sawedoff", math.random(0, sawedoff))
        gui.SetValue("skin.add weapon_scar20", math.random(0, scar20))
        gui.SetValue("skin.add weapon_sg556", math.random(0, sg556))
        gui.SetValue("skin.add weapon_ssg08", math.random(0, ssg08))
        gui.SetValue("skin.add weapon_tec9", math.random(0, tec9))
        gui.SetValue("skin.add weapon_ump45", math.random(0, ump45))
        gui.SetValue("skin.add weapon_usp_silencer", math.random(0, usp_silencer))
        gui.SetValue("skin.add weapon_xm1014", math.random(0, xm1014))
       
		-- enable knife changer
		gui.SetValue("esp.skins.enable", 1)
		
		knives = 
		{ 
		"skin_bayonet_enable", "skin_knife_butterfly_enable", "skin_knife_falchion_enable", "skin_knife_flip_enable",
		"skin_knife_gut_enable", "skin_knife_gypsy_jackknife_enable", "skin_knife_karambit_enable", "skin_knife_m9_bayonet_enable",
		"skin_knife_push_enable", "skin_knife_stiletto_enable", "skin_knife_survival_bowie_enable", "skin_knife_tactical_enable",
		"skin_knife_ursus_enable", "skin_knife_widowmaker_enable"
		}
		
		for _, knive in ipairs(knives) do
			gui.SetValue(knive, 1)
		end
		
		-- shuffle knife paintkits
        gui.SetValue("skin.add weapon_knife_bayonet", math.random(0, bayonet))
        gui.SetValue("skin.add weapon_knife_butterfly", math.random(0, butterfly))
        gui.SetValue("skin.add weapon_knife_falchion", math.random(0, falchion))
        gui.SetValue("skin.add weapon_knife_flip", math.random(0, flipknife))
        gui.SetValue("skin.add weapon_knife_gut", math.random(0, gut))
        gui.SetValue("skin.add weapon_knife_gypsy_jackknife", math.random(0, gypsy_jackknife)) -- navaja
        gui.SetValue("skin.add weapon_knife_karambit", math.random(0, karambit))
        gui.SetValue("skin.add weapon_knife_m9_bayonet", math.random(0, m9_bayonet))
        gui.SetValue("skin.add weapon_knife_push", math.random(0, push)) -- shadow daggers
        gui.SetValue("skin.add weapon_knife_stiletto", math.random(0, stiletto))
        gui.SetValue("skin.add weapon_knife_survival_bowie", math.random(0, survival_bowie))
        gui.SetValue("skin.add weapon_knife_tactical", math.random(0, tactical)) -- huntsman
        gui.SetValue("skin.add weapon_knife_ursus", math.random(0, ursus))
        gui.SetValue("skin.add weapon_knife_widowmaker", math.random(0, widowmaker)) -- talon
	   
        -- apply changes
        client.Command('cl_fullupdate', true)
    end
end
 
client.AllowListener('round_start')
callbacks.Register('FireGameEvent', 'random_skins', main)