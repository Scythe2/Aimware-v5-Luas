callbacks.Register("Draw", function()
    draw.Color(0,128,0,255)
    draw.SetFont(draw.CreateFont("Tahoma", 25, 100))

    if (gui.GetValue("rbot.master") == true) then
        draw.TextShadow(486, 1045, "RageBot")
    end

    if (gui.GetValue("misc.fakelag.enable") == true) then
        draw.TextShadow(406, 1045, "FakeLag")
    end

    if (gui.GetValue("rbot.master") == true) and (gui.GetValue("rbot.aim.key") == 0) then
        draw.TextShadow(569, 1045, "AutoFire")
    end
end)