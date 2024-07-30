function load_editor()
    local table_of_funny_faces = {
        '(⓿_⓿)',
        '( ⓛ ω ⓛ *)',
        '(⌐■_■)',
        '＞︿＜'
    }

    local picked_face = math.random(1, #table_of_funny_faces)

    local main_panel = vgui.Create('DFrame',nil,nil)
    main_panel:SetDraggable(false)
    main_panel:SetSize(ScrW() / 6, ScrH())
    main_panel:SetPos(0,0)
    main_panel:SetTitle('Hologram Editor '..table_of_funny_faces[picked_face])
    main_panel:MakePopup()

    local top_panel = vgui.Create( "DPanel", main_panel)
    top_panel:SetSize(0, ScrH() / 1.5)
    top_panel:Dock(TOP)
    
    local bottom_panel = vgui.Create( "DPanel", main_panel)
    bottom_panel:SetSize(0, ScrH() / 3.4)
    bottom_panel:Dock(TOP)
    bottom_panel:DockMargin(0, 6, 0, 0)

    print('editor loaded!')
end

function createhologram(parent, owner)

end