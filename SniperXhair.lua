function on_sniper_AWP(Event)    
   if (Event:GetName() ~= 'item_equip') then
      return;
   end

  if (client.GetLocalPlayerIndex() == client.GetPlayerIndexByUserID(Event:GetInt('userid'))) then
      if Event:GetString('item') == "awp" then

           drawAWPCH = true
      elseif Event:GetString('item') ~= "awp" then
           drawAWPCH = false
           return;
      end
  end

end

function ifawp()        
        if drawAWPCH == true then
               draw.Color(0, 255, 0,255)
        draw.Text(958,531, ".")
        
end
end

function on_sniper_SSG(Event)    
   if (Event:GetName() ~= 'item_equip') then
      return;
   end

  if (client.GetLocalPlayerIndex() == client.GetPlayerIndexByUserID(Event:GetInt('userid'))) then
      if Event:GetString('item') == "ssg08" then

           drawSSGCH = true
      elseif Event:GetString('item') ~= "ssg08" then
           drawSSGCH = false
           return;
      end
  end

end

function ifssg()
        if drawSSGCH == true then
                draw.Color(0, 255, 0,255)
         draw.Text(958,531, ".")
      
end
end

function on_sniper_SCAR(Event)    
   if (Event:GetName() ~= 'item_equip') then
      return;
   end

  if (client.GetLocalPlayerIndex() == client.GetPlayerIndexByUserID(Event:GetInt('userid'))) then
      if Event:GetString('item') == "scar20" then

           drawscarCH = true
      elseif Event:GetString('item') ~= "scar20" then
           drawscarCH = false
           return;
      end
  end

end
function ifscar()        
        if drawscarCH == true then
               draw.Color(0, 255, 0,255)
         draw.Text(958,531, ".")
                
end
end

function on_sniper_G3SG1(Event)    
   if (Event:GetName() ~= 'item_equip') then
      return;
   end

  if (client.GetLocalPlayerIndex() == client.GetPlayerIndexByUserID(Event:GetInt('userid'))) then
      if Event:GetString('item') == "g3sg1" then

           drawg3sg1CH = true
      elseif Event:GetString('item') ~= "g3sg10" then
           drawg3sg1CH = false
           return;
      end
  end

end
function ifg3sg1()        
        if drawg3sg1CH == true then
               draw.Color(0, 255, 0,255)
        draw.Text(958,531, ".")
                
end
end
  
  
client.AllowListener('item_equip');
callbacks.Register("FireGameEvent", "on_sniper_AWP", on_sniper_AWP);
callbacks.Register("FireGameEvent", "on_sniper_SSG", on_sniper_SSG);
callbacks.Register("FireGameEvent", "on_sniper_SCAR", on_sniper_SCAR);
callbacks.Register("FireGameEvent", "on_sniper_G3SG1", on_sniper_G3SG1);
callbacks.Register("Draw", "ifawp", ifawp);
callbacks.Register("Draw", "ifssg", ifssg);
callbacks.Register("Draw", "ifscar", ifscar);
callbacks.Register("Draw", "ifg3sg1", ifg3sg1);