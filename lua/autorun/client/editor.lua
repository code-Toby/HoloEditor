include('autorun/client/functions.lua')
local parts = {}


net.Receive('he_net', function(len, ply)
    local code = net.ReadString()
    if code == 'he_net_open_editor' then
        load_editor(LocalPlayer(), parts)
    end
end)