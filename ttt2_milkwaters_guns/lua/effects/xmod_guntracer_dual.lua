local pew = Material( "trails/laser" )

function EFFECT:Init( data )

	self.Position = data:GetStart()
	self.EndPos = data:GetOrigin()
	self.WeaponEnt = data:GetEntity()
	
	-- only do different tracer attachments clientside
	if self.WeaponEnt:GetOwner() == LocalPlayer() then
		-- code for switching muzzles for the tracer
		if self.WeaponEnt.leftGunFiring then
			self.Attachment = data:GetEntity():GetOwner():GetViewModel():LookupAttachment("muzzle_left")
		else
			self.Attachment = data:GetEntity():GetOwner():GetViewModel():LookupAttachment("muzzle_right")
		end
	else
		self.Attachment = data:GetAttachment()
	end
	
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Dir = ( self.EndPos - self.StartPos ):GetNormalized()
	self.Dist = self.StartPos:Distance( self.EndPos )
	
	self.LifeTime = 0.3 - ( 1 / self.Dist )
	self.DieTime = CurTime() + self.LifeTime

end

function EFFECT:Think()

	if ( CurTime() > self.DieTime ) then return false end
	return true

end

function EFFECT:Render()

	local v1 = ( CurTime() - self.DieTime ) / self.LifeTime
	local v2 = ( self.DieTime - CurTime() ) / self.LifeTime
	local a = self.EndPos - self.Dir * math.min( 1 - ( v1 * self.Dist ), self.Dist )

	render.SetMaterial( pew )
	render.DrawBeam( a, self.EndPos, v2 * 1, 1, self.Dist / 0, Color( 255, 255, 255, v2 * 100 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )
	-- render.DrawBeam( a, self.EndPos, v2 * 25, 20, self.Dist / 0, Color( 0, 100, 255, v2 * 255 ) )

end
