if CLIENT then
	local StanceCrouchToggle = false
	local StanceCrouchMode = 0

	concommand.Add("crouchstance", function (ply, cmd)
		StanceCrouchToggle = !StanceCrouchToggle
	end )
	concommand.Add("crouchstance_mode", function (ply, cmd)
		if StanceCrouchMode == 0 then
			StanceCrouchMode = 1
			ply:PrintMessage(HUD_PRINTCENTER, "Crouch Stance = Toggle + Run")
		elseif StanceCrouchMode == 1 then
			StanceCrouchMode = 2
			ply:PrintMessage(HUD_PRINTCENTER, "Crouch Stance = Toggle + Sprint Only")
		elseif StanceCrouchMode == 2 then
			StanceCrouchMode = 0
			ply:PrintMessage(HUD_PRINTCENTER, "Crouch Stance = Toggle")
		end
	end )

	hook.Add( "StartCommand", "CrouchStance", function( ply, cmd )
		
		if StanceCrouchToggle == true then
			if not ply:IsPlayer() or !ply:Alive() then return end
			
			if StanceCrouchMode == 0 then
				cmd:AddKey(IN_DUCK)
			elseif StanceCrouchMode == 1 then
				if ((cmd:GetForwardMove() > 0) or (cmd:GetForwardMove() < 0) or (cmd:GetSideMove() > 0) or (cmd:GetSideMove() < 0)) then
					return
				else
					cmd:AddKey(IN_DUCK)
				end
			elseif StanceCrouchMode == 2 then
				if ply:KeyDown( 131072 ) then
					return
				else
					cmd:AddKey(IN_DUCK)
				end
			end
		else
			return
		end
	end )
end
