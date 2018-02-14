/* 
Contains code for creating the main menu screen:
	- create game title
	- create highscore text holder
	- create game launch instruction
	- contains submodules for game views navigation logic
*/
MainMenu:

if menu_created = 0
	CreateText(3,"Space Shooter")
	SetTextSize(3, 100)
	SetTextPosition(3, (768 - GetTextTotalWidth(3))/2 , 180)

	CreateText(4, "HIGHSCORE: " + str(highscore))
	SetTextSize(4, 60)
	SetTextPosition(4, 768 - GetTextTotalWidth(4) , 0)

	CreateText(5, "Fire to start game")
	SetTextSize(5, 60)
	SetTextPosition(5, (768 - GetTextTotalWidth(5))/2 , 900)
	
	menu_created = 1
endif

/* Activate menu */
GoSub HideGameSprites
GoSub ShowMenuText

/* Wait for player to start the game */
repeat
	sync()
until ( GetPointerPressed() = 1 or GetRawKeyPressed(KEY_SPACE) )

/* Reset the enemy ships position to top of screens before restart */
for j = 103 to 105
	setSpriteY(j, OFFSCREEN_Y)
next j

gameover = 0	// game running

/* Hide menu and show game sprites */
GoSub ShowGameSprites
GoSub HideMenuText

Return


/* 
Contains code for creating the main on-screen score
*/
CreateScore:
CreateText(1, "SCORE: " + str(score))
SetTextSize(1, 60)
SetTextPosition(1, 0, 0)
Return

/* 
Contains code for hiding the game sprites:
	- hides enemy ships
	- hides player ship
	- hides lazer shot
	- hides stars
*/
HideGameSprites:
for i = 1 to 105
	SetSpriteVisible(i, 0)
next i
for j = 103 to 105
	SetTextVisible(j, 0)
next j
Return

/* 
Contains code for showing the game sprites:
	- shows enemy ships
	- shows player ship
	- shows lazer shot
	- shows stars
*/
ShowGameSprites:
for i = 1 to 105
	SetSpriteVisible(i, 1)
next i
for j = 103 to 105
	SetTextVisible(j, 1)
next j
Return

/*
Contains code for hiding the main menu texts
*/
HideMenuText:
SetTextVisible(3, 0)
SetTextVisible(5, 0)
Return

/* 
Contains code for shozing the main menu texts
*/
ShowMenuText:
SetTextVisible(3, 1)
SetTextVisible(5, 1)
Return
