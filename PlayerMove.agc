/* 
Contains code for player movement, including:
	- moving left and right
	- preventing player from falling off the left and right screen edges
*/
PlayerMove:

/* update the new value of the player's x position */
player.x = player.x + GetDirectionX() * PLAYER_SPEED

/* check that player ship doesn't fall off left screen edge */
if player.x < 0
	player.x = 0
endif

/* check that player ship doesn't fall off right screen edge */
if player.x > GetVirtualWidth() - GetSpriteWidth(101)
	player.x = GetVirtualWidth() - GetSpriteWidth(101)
endif

/* update the player position on the screen */
SetSpritePosition(101, player.x, player.y)

Return
