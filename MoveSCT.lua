local f = CreateFrame("FRAME");
f:SetScript("OnEvent", function(self,event,...) 
	local arg1 =...; 	
	if (arg1=="Blizzard_CombatText") then 
		f:UnregisterEvent("ADDON_LOADED"); 
		hooksecurefunc("CombatText_UpdateDisplayedMessages", function()
			COMBAT_TEXT_LOCATIONS = {
				startX = 0,
				startY = 600 * COMBAT_TEXT_Y_SCALE,
				endX = 0,
				endY = 700 * COMBAT_TEXT_Y_SCALE
			};
			COMBAT_TEXT_MAX_OFFSET = 50;
		end); 
	end 
end);
f:RegisterEvent("ADDON_LOADED");
