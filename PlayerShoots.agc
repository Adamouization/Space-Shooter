/* 
Contains code for player lazer shooting, including:
	- detecting mouse click to shoot the lazer from the tip of the player sprite
	- lazer movement upwards
	- lazer hiding when it moves off the screen
*/
PlayerShoots:

// Check if player has fired
if GetPointerPressed()=1 and lazer_fired=0
	playsound(lazer)
	lazer_fired = 1
	lazerx = GetSpriteX(101) + GetSpriteWidth(101)/2 - GetSpriteWidth(102)/2	// position laser in middle of ship
	lazery = GetSpriteY(101) - 40
endif

// If laser has been shot, move it up the screen
if lazer_fired = 1
	lazery = lazery - 12
endif

// If lazer has moved off the screen, hide it
if lazery <- GetSpriteHeight(102)
	lazer_fired = 0
endif

SetSpritePosition(102, lazerx, lazery)

Return
