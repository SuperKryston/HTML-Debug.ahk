class Debug
{
    __New(class:="Debug",win_color:="black", text_color:="white", default_label:="__Debug_")
    {
      global
      static control, name, temp_html, Wingethwnd
      this.class := "__" class "__"
      name := class
      this.background := win_color
      this.text_color := text_color
      class := this.class
      Gui %class%:+HwndHwnd +Label__Debug_Label__ +resize +MinSize300x300
      this.Hwnd := Hwnd
      Gui, %Hwnd%:Color, %win_color%, %win_color%


      control := hwnd
      this.control := control
      Gui, %Hwnd%:Add, ActiveX, w300 h300 v%control%, HTMLFile
;      Gui, %Hwnd%:Add, ActiveX, w300 h300 vcontrol, HTMLFile
      this.control := control
;      ComObjConnect(this.control, default_label)


      this.html := control
      temp_html = <html><head><style> body{ overflow: auto; background-color: %win_color%; color: %text_color%;  }   </style></head><body oncontextmenu="return false;" draggable="false"></body></html>
      %control%.write(temp_html)
      Gui, %Hwnd%:Show, w500 h305, %name%


      WinGet, Wingethwnd, ID, ahk_id %Hwnd%
      this.hwnd2 := Wingethwnd
    }


    write(text,text_color:="",background_color:="") {
      global
      static count
      If (count = "")
        count := 0
      count := count + 1
      ;msgbox %count%
      control := this.html
      If (text_color = "")
        text_color := this.text_color
      If (background_color = "")
        background_color := this.background
      
      text = <table id="%count%" style="background-color: %background_color%; color: %text_color%;"><tbody><tr><td width="900000"><p id="%count%_p">%text%</p></td></tr></tbody></table>
      %control%.write(text)
    }


    set_background_color(color) {
      If (color != "") {
        this.background := color
      }
    }

    set_text_color(color) {
      If (color != "") {
        this.text_color := color
      }
    }

    clear() {
      global control
      control := this.html
      %control%.body.innerHTML := ""
    }

    show() {
      Hwnd := this.Hwnd
      Gui, %Hwnd%:Show
    }

    hide() {
      Hwnd := this.Hwnd
      Gui, %Hwnd%:Hide
    }

    Close()
    {
      hwnd := this.Hwnd
      Gui, %hwnd%:Destroy
      ;msgbox %hwnd%
    }

;    __Delete()
;    {
;      hwnd := this.Hwnd
;      Gui, %hwnd%:Destroy
;      ;msgbox %hwnd%
;    }
}


   __Debug_Label__Size(GuiHwnd, EventInfo, Width, Height) { 
       WinGet, GuiHwnd, ID, ahk_id %GuiHwnd%
       GuiControl, %GuiHwnd%:Move, %GuiHwnd%, x0 y0 w%Width% h%Height%
;msgbox hi
    }