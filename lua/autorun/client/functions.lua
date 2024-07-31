function load_editor(player, parts_table)
    local table_of_funny_faces = {
        '(⓿_⓿)',
        '( ⓛ ω ⓛ *)',
        '(⌐■_■)',
        '＞︿＜',
        '(●◡●)',
        '( ͡° ͜ʖ ͡°)',
        '┑(￣Д ￣)┍',
        'OwO wut dis',
        '✪ ω ✪',
        '/ᐠ｡ꞈ｡ᐟ\\'
    }

    local picked_face = math.random(1, #table_of_funny_faces)
    local txt = 'Hologram Editor: '..table_of_funny_faces[picked_face]

    if #parts_table <= 0 then
        -- create a new object and add to the table
    end

    local main_panel = vgui.Create('DFrame')
    main_panel:SetDraggable(false)
    main_panel:SetSize(ScrW(), ScrH())
    main_panel:SetPos(0,0)
    main_panel:SetTitle('')
    main_panel:MakePopup()
    main_panel:ShowCloseButton(false)
    main_panel.Paint = function(self, w, h)
        local txt_w, txt_h = surface.GetTextSize(txt)
        draw.RoundedBox(0,0,0,w,h,Color(255,255,255,0))
        
        draw.RoundedBox(5, w / 7.95, h - 35, txt_w + 10, txt_h + 20, Color(0,0,0,170))
        draw.SimpleText(txt,'CenterPrintText',w / 7.8,h - 15,Color(255,255,255),TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
    end

    local close_button = vgui.Create('DButton', main_panel)
    close_button:SetPos(ScrW() - 40, 0)
    close_button:SetSize(40,25)
    close_button:SetFont('HudDefault')
    close_button:SetText('X')
    close_button.DoClick = function()
        main_panel:Close()
    end

    local editor_panel = vgui.Create('DPanel', main_panel)
    editor_panel:SetSize(ScrW() / 8, ScrH())
    editor_panel.Paint = function(self, w, h)
        draw.RoundedBox(0,0,0,w,h,Color(66,66,66))
    end

    local higharcy_list = vgui.Create('DTree', editor_panel)
    higharcy_list:Dock(TOP)
    higharcy_list:DockMargin(2,2,2,2)
    higharcy_list:SetSize(0,850)
    for i=1, #parts_table do
        local part = higharcy_list:AddNode('hologram', 'icon16/package.png')
    end

    local properties_list = vgui.Create('DCategoryList', editor_panel)
    properties_list:Dock(TOP)
    properties_list:DockMargin(2,2,2,2)
    properties_list:SetSize(0,220)
    local properties = properties_list:Add( "Properties" )

    print('editor loaded!')
end