AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self.Model = 'models/hunter/blocks/cube025x025x025.mdl'
    self.Material = 'models/debug/debugwhite'
    self.Color = Color(255, 255, 255, 255)

    self:SetModel(self.Model)
    self:SetMaterial(self.Material)
    self:SetColor(self.Color)
    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_NONE)
end

function ENT:Think()
    net.Receive('he_ent_net', function()
        local code = net.ReadString()
    
        if code == 'net_he_remove' then
            if IsValid(self) then
                self:Remove()
                return
            end
        end
    
    end)
end