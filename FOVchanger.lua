local visuals_menu = gui.Reference("VISUALS", "OTHER", "Effects")
local visuals_custom_viewmodel_editor = gui.Checkbox( visuals_menu, "lua_custom_viewmodel_editor", "Custom Viewmodel Editor", 0 );
local S,e=client.SetConVar,gui.Checkbox(gui.Reference("VISUALS", "OTHER", "Effects"), 'lua_disable_panorama_blur', 'Disable Panorama Blur', false)
local xO = client.GetConVar("viewmodel_offset_x");
local yO = client.GetConVar("viewmodel_offset_y");
local zO = client.GetConVar("viewmodel_offset_z");
local fO = client.GetConVar("viewmodel_fov");
local f1 = client.GetConVar("fov_cs_debug");
local xS = gui.Slider(visuals_menu, "lua_x", "X", xO, -20, 20); 
local yS = gui.Slider(visuals_menu, "lua_y", "Y", yO, -100, 100); 
local zS = gui.Slider(visuals_menu, "lua_z", "Z", zO, -20, 20); 
local vfov = gui.Slider(visuals_menu, "vfov", "Viewmodel FOV", fO, 0, 120);
local fov = gui.Slider(visuals_menu, "fov", "View FOV", f1, 0, 120);


local function Visuals_Viewmodel()
   if visuals_custom_viewmodel_editor:GetValue() then
client.SetConVar("viewmodel_offset_x", xS:GetValue(), true);
client.SetConVar("viewmodel_offset_y", yS:GetValue(), true);
client.SetConVar("viewmodel_offset_z", zS:GetValue(), true);
client.SetConVar("viewmodel_fov", vfov:GetValue(), true);
client.SetConVar("fov_cs_debug", fov:GetValue(), true);
   end
   end


local function noshadows()
    client.SetConVar( "r_shadows", 0, true );
    client.SetConVar( "cl_csm_static_prop_shadows", 0, true );
    client.SetConVar( "cl_csm_shadows", 0, true );
    client.SetConVar( "cl_csm_world_shadows", 0, true );
    client.SetConVar( "cl_foot_contact_shadows", 0, true );
    client.SetConVar( "cl_csm_viewmodel_shadows", 0, true );
    client.SetConVar( "cl_csm_rope_shadows", 0, true );
    client.SetConVar( "cl_csm_sprite_shadows", 0, true );
end


local function event(e)
    if e:GetName() == "round_start" then
        noshadows()
    end       
end

noshadows()

client.AllowListener("round_start")
callbacks.Register ("FireGameEvent", event)
callbacks.Register("Draw", "Custom Viewmodel Editor", Visuals_Viewmodel)
