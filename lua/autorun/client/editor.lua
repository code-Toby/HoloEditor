include('autorun/client/functions.lua')

net.Receive('he_net', function()
    local code = net.ReadString()
    if code == 'he_net_open_editor' then
        load_editor()
    end
end)