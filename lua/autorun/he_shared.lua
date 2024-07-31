list.Set( 'DesktopWindows', 'Holo_Editor', {
    title = 'Hologram Editor',
    icon = 'icon16/layout_edit.png',
    init = function( icon, window )
        LocalPlayer():ConCommand( "hologram_editor" )
    end
} )

concommand.Add('hologram_editor', function(ply)
    net.Start('he_net')
        net.WriteString('he_net_open_editor')
    net.Send(ply)

    print('opening editor')
end)