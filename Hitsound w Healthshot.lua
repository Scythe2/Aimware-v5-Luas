-- aimware.net/forum/thread-116236.html
hsounds = {"bass.wav", "bf4.wav", "Bowhit.wav", "bruh.wav", "uagay.wav", "rifk.wav", "Cookie.wav", "windows-error.wav", "roblox.mp3", "vitas.wav", "mhit1.mp3", "gachi.wav", "metro2033.mp3", "minecraft.mp3"}
local localplayer, localplayerindex, listen, GetPlayerIndexByUserID, g_curtime, c_reg = entities.GetLocalPlayer, client.GetLocalPlayerIndex, client.AllowListener, client.GetPlayerIndexByUserID, globals.CurTime, callbacks.Register
local msc_ref = gui.Reference('MISC')
local tab = gui.Tab(msc_ref, "misc_tab_hitsound", "HitSound" )
local allenabled = gui.Checkbox(tab, 'lua_hitsound_enabled', 'Hitsound/marker enabled', 1)
local hitssounds = gui.Combobox(tab, 'lua_hitsound_combobox', 'Hitsound', "Off", "Bass", "Battlefield 4", "Bowhit", "Bruh", "You a gay", "R1fk", "Cookie", "Windows XP error", "Roblox", "Vitas", "Minecraft hit", "Gachimuchi", "Metro 2033", "Minecraft oh")
local killssounds = gui.Combobox(tab, 'lua_killsound_combobox', 'Killsound', "Off", "Bass", "Battlefield 4", "Bowhit", "Bruh", "You a gay", "R1fk", "Cookie", "Windows XP error", "Roblox", "Vitas", "Minecraft hit", "Gachimuchi", "Metro 2033", "Minecraft oh")
local combo = gui.Combobox(tab, 'lua_healthshot_hitmarker_combobox', 'Healthshot hitmarker', 'Off', 'On hit', 'On kill')
local slider = gui.Slider(tab, 'lua_healthshot_hitmarker_slider', 'Healthshot duration (sec)', 1, 0, 10)


local function healthshot_hitmarker(e)
 if not allenabled:GetValue() then
  return
 end
 local event_name = e:GetName()
 if event_name ~= 'player_hurt' and event_name ~= 'player_death' then
  return
 end
 local me = localplayerindex()
 local victim = GetPlayerIndexByUserID(e:GetInt('userid'))
 local attacker = GetPlayerIndexByUserID(e:GetInt('attacker'))
 local im_attacker = attacker == me and victim ~= me
 local duration = slider:GetValue()
 if not im_attacker then
  return
 end

 if (event_name == 'player_hurt') then
  if (combo:GetValue() ~= 0 ) and (combo:GetValue() == 1 ) then
   localplayer():SetProp('m_flHealthShotBoostExpirationTime', g_curtime() + duration)
   
  end
  if (hitssounds:GetValue() ~= 0 ) then
   local hitcmd = "play " .. hsounds[hitssounds:GetValue()];
             client.Command(hitcmd, true);
  end
 end

 if (event_name == 'player_death') then
  if (combo:GetValue() ~= 0 ) and (combo:GetValue() == 2 ) then
   localplayer():SetProp('m_flHealthShotBoostExpirationTime', g_curtime() + duration)
   
  end
  if (killssounds:GetValue() ~= 0 ) then
   local hitcmd = "play " .. hsounds[killssounds:GetValue()];
             client.Command(hitcmd, true);
  end
 end
end

listen('player_hurt')
listen('player_death')
c_reg('FireGameEvent', healthshot_hitmarker)