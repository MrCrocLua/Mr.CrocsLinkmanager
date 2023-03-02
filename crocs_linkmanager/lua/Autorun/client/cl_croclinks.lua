hook.Add( "OnPlayerChat", "panelopen", function( ply, strText, bTeam, bDead ) 
    if ( ply != LocalPlayer() ) then return end
	strText = string.lower( strText ) -- make the string lower case

	if ( strText == "/links" ) then -- if the player typed /links then
		ply:ConCommand( "linkmanager" )
		return false -- 
	end
end )



concommand.Add( "linkmanager", function( ply, cmd, args )
local frame = vgui.Create("DFrame")
frame:SetSize(1000,720)
frame:Center()
frame:SetVisible(true)
frame:MakePopup()
frame:SetTitle("Mr.Crocs Link Manager")
frame.Paint = function(s , w , h)

    draw.RoundedBox(5,0,0, w , h ,Color(121,121,121))
    draw.RoundedBox(5,2,2, w -4 , h -4 ,Color(31,36,48))

end

local window = vgui.Create( "DHTML", frame ) 
window:SetSize( 800, 680 )
window:SetPos(190,25)

--local ctrls = vgui.Create( "DHTMLControls", frame ) 
--ctrls:SetWide( 800 )
--ctrls:SetPos( 190, 40 )
--ctrls:SetHTML( window ) 


--window:MoveBelow( ctrls ) 
window:OpenURL( "https://github.com/MrCrocLua" ) -- Opens Any link on startup








local forum = vgui.Create("DButton",frame)
forum:SetSize(150,50)
forum:SetPos(35,80)
forum:SetVisible(true)
forum.Paint = function(s, w, h)

    draw.RoundedBox(5,0,0,w,h,Color(0,0,0))
    draw.RoundedBox(5,2,2,w-4,h-4,Color(255,255,255))

end
forum:SetText("Forums") --Button Name
function forum:DoClick()
    window:OpenURL( "https://github.com/MrCrocLua" ) --link to your forums
end

local discord = vgui.Create("DButton",frame)
discord:SetSize(150,50)
discord:SetPos(35,155)
discord:SetVisible(true)
discord.Paint = function(s, w, h)

    draw.RoundedBox(5,0,0,w,h,Color(0,0,0))
    draw.RoundedBox(5,2,2,w-4,h-4,Color(255,255,255))

end
discord:SetText("Discord") --Button Name
function discord:DoClick()
    window:OpenURL( "https://discord.gg/Ev3QbHaMfs" ) -- link to your discord server
end

local rules = vgui.Create("DButton",frame)
rules:SetSize(150,50)
rules:SetPos(35,230)
rules:SetVisible(true)
rules.Paint = function(s, w, h)

    draw.RoundedBox(5,0,0,w,h,Color(0,0,0))
    draw.RoundedBox(5,2,2,w-4,h-4,Color(255,255,255))

end
rules:SetText("Rules") --Button Name
function rules:DoClick()
    window:OpenURL( "https://steamcommunity.com/id/mrcroclua/" ) -- link to your rules
end

local steamgroup = vgui.Create("DButton",frame)
steamgroup:SetSize(150,50)
steamgroup:SetPos(35,305)
steamgroup:SetVisible(true)
steamgroup.Paint = function(s, w, h)

    draw.RoundedBox(5,0,0,w,h,Color(0,0,0))
    draw.RoundedBox(5,2,2,w-4,h-4,Color(255,255,255))

end
steamgroup:SetText("SteamGroup") --Button Name
function steamgroup:DoClick()
    window:OpenURL( "https://steamcommunity.com/id/mrcroclua/" ) -- your steam group link
end

local youtube = vgui.Create("DButton",frame)
youtube:SetSize(150,50)
youtube:SetPos(35,380)
youtube:SetVisible(true)
youtube.Paint = function(s, w, h)

    draw.RoundedBox(5,0,0,w,h,Color(0,0,0))
    draw.RoundedBox(5,2,2,w-4,h-4,Color(255,255,255))

end
youtube:SetText("YouTube") --Button Name
function youtube:DoClick()
    window:OpenURL( "https://www.youtube.com/channel/UChYsIMDGWY2YwZVs6B_bEdQ" ) -- your youtube channel link
end


end)