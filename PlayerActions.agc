/* 
Contains code for player movement, including:
	- moving left and right
	- preventing player from falling off the left and right screen edges
*/
PlayerMove:

player.x = player.x + GetDirectionX() * PLAYER_SPEED	// update the new value of the player's x position
if player.x < 0	// prevent player from falling off left screen edge
	player.x = 0
endif
if player.x > GetVirtualWidth() - GetSpriteWidth(player.id)	// prevent player from falling off left screen edge
	player.x = GetVirtualWidth() - GetSpriteWidth(player.id)
endif
SetSpritePosition(player.id, player.x, player.y)

Return

/* 
Contains code for player lazer shooting, including:
	- detecting mouse click to shoot the lazer from the tip of the player sprite
	- lazer movement upwards
	- lazer hiding when it moves off the screen
*/
PlayerShoots:

if (GetPointerPressed()=1 or GetRawKeyPressed(32)) and lazer.fired=0	// player has fired
	playsound(lazer_sound)
	lazer.fired = 1
	lazer.x = GetSpriteX(player.id) + GetSpriteWidth(player.id)/2 - GetSpriteWidth(lazer.id) / 2	// position lazer in middle of ship
	lazer.y = GetSpriteY(player.id) - 40
endif
if lazer.fired = 1	// move lazer up the screen on y-axis
	lazer.y = lazer.y - LAZER_SPEED
endif
if lazer.y <- GetSpriteHeight(lazer.id)	// hide lazer when moves off the screen and allow new lazer to be fired
	lazer.fired = 0
endif
SetSpritePosition(lazer.id, lazer.x, lazer.y)

Return
