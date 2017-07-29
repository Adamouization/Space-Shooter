MainMenu:

CreateText(3,"Space Shooter")
SetTextSize(3,100)
SetTextPosition(3, (768 - GetTextTotalWidth(3))/2 , 180)

CreateText(4, "High Score")
SetTextSize(4, 60)
SetTextPosition(4, 768 - GetTextTotalWidth(4) , 0)

CreateText(5, "Fire to start game")
SetTextSize(5, 60)
SetTextPosition(5, (768 - GetTextTotalWidth(5))/2 , 900)

// Activate menu
GoSub HideGameSprites
GoSub ShowMenuText

// Wait for player to start the game
repeat
	sync()
until GetPointerPressed() = 1

gameover = 0	// game running

// Hide menu and show game sprites
GoSub ShowGameSprites
GoSub HideMenuText

Return




HideGameSprites:
for i=1 to 103
	SetSpriteVisible(i,0)
next i
Return

ShowGameSprites:
for i=1 to 103
	SetSpriteVisible(i,1)
next i
Return

HideMenuText:
SetTextVisible(3,0)
SetTextVisible(5,0)
Return

ShowMenuText:
SetTextVisible(3,1)
SetTextVisible(5,1)
Return
