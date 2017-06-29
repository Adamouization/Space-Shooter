loader:
LoadImage(1,"player_ship.png")
LoadImage(2,"laser.png")

// Create player ship and place it at bottom of screen
CreateSprite(1,1)
playerx = GetVirtualWidth()/2 - GetSpriteWidth(1)/2 	// middle of screen
playery = GetVirtualHeight() - GetSpriteHeight(1)		// bottom of screen
SetSpritePosition(1, playerx, playery)

// Create lazer shot and place it off screen for now
CreateSprite(2,2)
SetSpritePosition(2,-100,-100)

Return
