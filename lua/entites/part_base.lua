AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )

ENT.ClassName = 'he_part_base'
ENT.AdminOnly = true 
ENT.Spawnable = false

ENT.Selected = false

function ENT:Initialize()
    if SERVER then
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
    end
end

function ENT:Draw()

end
