#Include debug.ahk
White_Debug := new Debug("White", "white", "black")
Debug := new Debug


Error_Color := "Red"

White_Debug.Write("This is the default printout of debug")
White_Debug.Write("This is error example 1", Error_Color)
White_Debug.Write("This is error example 2", "black", Error_Color)
White_Debug.Write("This is error example 3, which is much more convenient",, Error_Color)
White_Debug.Write("You can also use color codes",, "00ff00")
White_Debug.Write("#'s are also accepted",, "#00ff00")

Debug.Write("This is the default window and color for debugging, which I would guess is better on the user's eye")
Debug.Write("The normal ``n is a lot buggy using here, so first you must replace it to br and enclose in the pointer brackets '<' '>'")
Debug.Write("For example this is above br <br> this is below br")
Debug.Write("The reason why i default theme the window this way is because it reminds me of comspec which is a really fun tool to use with ahk")
Debug.Write("I recommend checking the code for this script to have an idea how to use as this will clear in 2 minuates")
Control := Debug.control
Debug.Write("The control for this script is: "Control)
Hwnd1 := Debug.hwnd
Hwnd2 := Debug.hwnd2
Debug.Write("While debugging the class for this script, i found out the gui gets two hwnd and for this script, the both of em are seperated by |, the hwnd are: " Hwnd1 "|" Hwnd2,"", "Red")
sleep 120000
Debug.Clear()
F5::Reload