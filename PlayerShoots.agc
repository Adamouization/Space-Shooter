/* 
Contains code for player lazer shooting, including:
	- detecting mouse click to shoot the lazer from the tip of the player sprite
	- lazer movement upwards
	- lazer hiding when it moves off the screen
*/
PlayerShoots:

/* Check if player has fired */
if GetPointerPressed()=1 and lazer.fired=0
	playsound(lazer_sound)
	lazer.fired = 1
	lazer.x = GetSpriteX(101) + GetSpriteWidth(101)/2 - GetSpriteWidth(102)/2	// position laser in middle of ship
	lazer.y = GetSpriteY(101) - 40
endif

/* If laser has been shot, move it up the screen */
if lazer.fired = 1
	lazer.y = lazer.y - 12
endif

/* If lazer has moved off the screen, hide it */
if lazer.y <- GetSpriteHeight(102)
	lazer.fired = 0
endif

/* Update the lazer's position on the screen */
SetSpritePosition(102, lazer.x, lazer.y)

Return
