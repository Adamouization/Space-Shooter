/* 
Contains code for player movement, including:
	- moving left and right
	- preventing player from falling off the left and right screen edges
*/
PlayerMove:

playerx = playerx + GetDirectionX()*12

// check that player ship doesn't fall off left screen edge
if playerx < 0
	playerx = 0
endif

// check that player ship doesn't fall off right screen edge
if playerx > GetVirtualWidth() - GetSpriteWidth(1)
	playerx = GetVirtualWidth() - GetSpriteWidth(1)
endif

SetSpritePosition(1, playerx, playery)

Return
