util.AddNetworkString('he_ent_data')
util.AddNetworkString('he_ent_net')
util.AddNetworkString('he_net')

concommand.Add('hologram_editor', function(ply)
    net.Start('he_net')
        net.WriteString('he_net_open_editor')
    net.Send(ply)

    print('opening editor')
end)

list.Set( 'DesktopWindows', 'Holo_Editor', {
    title = 'Hologram Editor',
    icon = 'icon32/tool.png',
    init = function( icon, window )
        LocalPlayer():ConCommand( "hologram_editor" )
    end
} )