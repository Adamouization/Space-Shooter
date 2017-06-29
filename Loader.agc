loader:
LoadImage(1,"player_ship.png")

// Create player ship and place it at bottom of screen
CreateSprite(1,1)
playerx = GetVirtualWidth()/2 - GetSpriteWidth(1)/2 	// middle of screen
playery = GetVirtualHeight() - GetSpriteHeight(1)		// bottom of screen
SetSpritePosition(1, playerx, playery)

Return
