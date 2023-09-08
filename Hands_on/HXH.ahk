Loop
{
    ; Calculate random offsets within the box
    Random, offsetX, 0, 200 ; Adjust the X range as needed
    Random, offsetY, 0, 100 ; Adjust the Y range as needed
    
    ; Calculate the actual coordinates by adding the offsets to the box's top-left corner
    mouseX := 100 + offsetX
    mouseY := 100 + offsetY
    
    ; Move the mouse to the calculated coordinates
    MouseMove, % mouseX, % mouseY, 0, R
    
    ; Click the mouse randomly every 2 to 5 seconds
    Random, clickInterval, 2000, 5000
    Sleep, % clickInterval
    Click
}
