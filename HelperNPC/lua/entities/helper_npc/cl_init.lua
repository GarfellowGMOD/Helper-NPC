include("config.lua")
include("shared.lua")
include("fonts.lua")
include("multiLabel.lua")

//local color_white = Color(255, 255, 255)

//Networking:
net.Receive("updateView", function(len)
	HelpNPCdrawMenu()
end)

// GUI Functions:
function HelpNPCdrawHelpSign(self)
	local angle = self:GetAngles()
	local position = self:GetPos()

	angle:RotateAroundAxis(self:GetAngles():Up(), 180)
	angle:RotateAroundAxis(self:GetAngles():Forward(), 270)
	angle:RotateAroundAxis(self:GetAngles():Right(), 0)

	angle.y = LocalPlayer():EyeAngles().y - 90

	position:Add(Vector(3 * angle:Up()))
	position:Add(Vector(-85 * angle:Right()))
	position:Add(Vector((-10) * angle:Forward()))

	cam.Start3D2D(position, angle, .1)
		draw.RoundedBox(0, 0, 0, 200, 100, help_outside_background)
		draw.RoundedBox(0, 0, 0, 200, 3, help_outside_border)
		draw.RoundedBox(0, 0, 0, 3, 100, help_outside_border)
		draw.RoundedBox(0, 200-3, 0, 3, 100, help_outside_border)
		draw.RoundedBox(0, 0, 100, 200, 3, help_outside_border)
		draw.DrawText("Help", "HelpNPC:TextFont", 10, 0, color_white, TEXT_ALIGN_LEFT)
	cam.End3D2D()
end

function HelpNPCdrawMenu()
	local margin = 100
	local width = ScrW() - margin
	local height = ScrH() - margin
	local border, topBorder = 5, 25
	local mainFrame = vgui.Create("DFrame")
	mainFrame:SetSize(width, height)
	mainFrame:Center()
	mainFrame:MakePopup()
	mainFrame:SetTitle("")
	mainFrame:SetDraggable(false)
	mainFrame:SetVisible(true)
	mainFrame:ShowCloseButton(true)
	mainFrame.btnMaxim:SetVisible(false)
	mainFrame.btnMinim:SetVisible(false)
	function mainFrame:Paint(w, h)
		
		//Main Box
		draw.RoundedBox(2, 0, 0, width, height, gui_mainbackground)
		//Edges
		draw.RoundedBox(2, 0, 0, width, topBorder, gui_outside_border)
		draw.RoundedBox(2, 0, 0, border, height, gui_outside_border)
		draw.RoundedBox(2, width-border, 0, width-border, height-border, gui_outside_border)
		draw.RoundedBox(2, 0, height-border, width, height, gui_outside_border)
		//Text
		draw.DrawText("Help Menu", "HelpNPC:SubFont", width/2, 6/2, color_white, TEXT_ALIGN_CENTER)
		function mainFrame.btnClose:Paint(w, h)
			draw.RoundedBox(0, 0, 2, w*.9, h*.9, gui_close_button)
			draw.DrawText("X", "HelpNPC:SubFont", ((w*.9)/2)-6, 2)
		end
	end
	//MODEL PANEl:
	local modelPanel = vgui.Create("DModelPanel", mainFrame)
	modelPanel:SetPos(border, topBorder)
	modelPanel:SetSize(width, height/3)
	modelPanel:SetModel(model_NPC_menu)
	function modelPanel:LayoutEntity( Entity ) return end
	modelPanel:SetAnimated(true)
	local dance = modelPanel:GetEntity():LookupSequence( "pose_standing_03" )
	modelPanel:GetEntity():SetSequence(dance)
	local headpos = modelPanel.Entity:GetBonePosition( modelPanel.Entity:LookupBone( "ValveBiped.Bip01_Head1" ) )
	local angle = Angle(0, 0, 0)
	//modelPanel:SetLookAng(angle)
	modelPanel:SetLookAt(Vector(-90, 0, 45))
	modelPanel:SetCamPos(Vector(headpos[1]+90, headpos[2], 70) )

	//HELP LANDING
	local helpLanding = vgui.Create("PANEL", mainFrame)
	helpLanding:SetPos(border, topBorder+height/3+2)
	helpLanding:SetSize(width-(border*2), (height/2)*1/8)
	function helpLanding:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, gui_outside_border)
		draw.DrawText(help_Message, "HelpNPC:TitleFont", width/2, h/6, color_white, TEXT_ALIGN_CENTER)
	end
	

	//MAIN SCROLL PANEL:
	local mainScroll = vgui.Create("DScrollPanel", mainFrame)
	mainScroll:Dock(0)
	mainScroll:SetPos(border, (topBorder+height/3+(height/2)*1/8))
	mainScroll:SetSize(width-(border*2), (((2*height/3)*7/8)-(topBorder)+(2*border)))

	local mainScrollBar = mainScroll:GetVBar()
	drawScrollBar(mainScrollBar)

	for i,category in pairs(helpData) do
		local categoryPanel = mainScroll:Add( "DButton" )
		local categoryTargetValue = 0
		local categoryCurrentValue = 0
		local openCount = 0
		local fullOpen = 0
		local responseHeight = 200
		categoryPanel:SetText( category["text"] )
		categoryPanel:Dock( TOP )
		categoryPanel:SetFont("HelpNPC:SubFont")
		categoryPanel:SetColor(color_white)
		categoryPanel:SetSize(width, 50)
		local questionBox = mainScroll:Add("PANEL")
		questionBox:Dock(TOP)
		questionBox:SetSize(width, 0)
		function categoryPanel:Paint(w, h)
			draw.RoundedBox(0, 0, 0, w, h, gui_category_color)
		end
		function categoryPanel:DoClick()
			fullOpen = ((50*(table.Count(category["questions"]))+(responseHeight*openCount)))
			categoryCurrentValue = categoryTargetValue
			if categoryTargetValue > 0 then categoryTargetValue = 0 else categoryTargetValue = fullOpen end
			questionBox:SetHeight((categoryCurrentValue+1))
		end
		function questionBox:Paint(w, h)
			draw.RoundedBox(0, 0, 0, w, h, gui_category_color)
			categoryCurrentValue = Lerp(FrameTime()*5, categoryCurrentValue, categoryTargetValue)
			questionBox:SetHeight(categoryCurrentValue+.5)
		end

		for question, response in pairs(category["questions"]) do
			local Question = questionBox:Add("DButton")
			local questionCurrentValue = 0
			local questionTargetValue = 0
			Question:SetText("")
			Question:Dock( TOP )
			Question:SetSize(width/2, 50)
			function Question:Paint(w, h)
				draw.RoundedBox(0, 0, 0, w, h, gui_question_color)
				draw.DrawText(question, "HelpNPC:SubFont", 10, 10, color_white, TEXT_ALIGN_LEFT)
			end
			local responseBox = questionBox:Add("DScrollPanel")
			responseBox:Dock(TOP)
			responseBox:SetSize(width, 0)
			local responseLabel = vgui.Create("DTextEntry", responseBox)
			responseLabel:SetText(response)
			responseLabel:SetFont("HelpNPC:SubFont")
			responseLabel:SetTextColor(color_white)
			responseLabel:SetPos(10, 10)
			responseLabel:SetWrap(true)
			responseLabel:SetEditable(false)
			responseLabel:SetDrawBackground(false)
			responseLabel:SetDrawBorder(false)
			responseLabel:SetMultiline(true)
			//responseLabel:SetAutoStretchVertical(true)
			responseLabel:SetWidth(width-border-45)
			local characterPerLine = (responseLabel:GetWide()/11)
			responseLabel:SetHeight(((math.ceil((string.len(response)/characterPerLine)))*21)+50)
			local responseScrollBar = responseBox:GetVBar()
			drawScrollBar(responseScrollBar)
			function Question:DoClick()
				questionCurrentValue = questionTargetValue
				if questionTargetValue > 0 then 
					questionTargetValue = 0
					openCount = openCount - 1
					fullOpen = ((50*(table.Count(category["questions"]))+(responseHeight*openCount)))
					categoryTargetValue = fullOpen  
				else 
					questionTargetValue = responseHeight
					openCount = openCount + 1
					fullOpen = ((50*(table.Count(category["questions"]))+(responseHeight*openCount)))
					categoryTargetValue = fullOpen 
				end
				responseBox:SetHeight(questionCurrentValue+1)
			end
			function responseBox:Paint(w, h)
				draw.RoundedBox(0, 0, 0, w, h, gui_response_color)
				questionCurrentValue = Lerp(FrameTime()*5, questionCurrentValue, questionTargetValue)
				responseBox:SetHeight(questionCurrentValue)
			end
		end
	end
end

function drawScrollBar(scrollbar)
	function scrollbar:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, gui_scroll_background)
	end
	function scrollbar.btnUp:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, gui_scroll_updown)
	end
	function scrollbar.btnDown:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, gui_scroll_updown)
	end
	function scrollbar.btnGrip:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, gui_scroll_grabber)
	end
end

// ENT Functions:
function ENT:Draw()
	self:DrawModel()
	HelpNPCdrawHelpSign(self)
end