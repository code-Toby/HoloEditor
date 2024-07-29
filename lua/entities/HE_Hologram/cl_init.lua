include('shared.lua')

function ENT:Initialize()
    self.Owner = nil
    self.Model = 'models/holograms/cube.mdl'
    self.Material = ''
    self.Color = Color(255, 255, 255, 255)
    self.Size = 1
    self.Scale = Vector(1, 1, 1)
    self.Position = Vector(0, 0, 0)
    self.Angle = Angle(0, 0, 0)
    self.Fullbright = false
    self.Matrix = Matrix()
end

function ENT:Draw()
    if LocalPlayer() ~= self.Owner then 
        net.Start('he_ent_net')
        net.WriteString('net_he_remove')
        net.SendToServer()
        return 
    end
    render.SuppressEngineLighting(self.Fullbright)
    self:DrawModel()
    self:DestroyShadow()

    self.Matrix:Scale((self.Scale * self.Size))
    self:EnableMatrix("RenderMultiply", self.Matrix)

    self:SetAngles(self.Angle)
    self:SetPos(self.Position)
end