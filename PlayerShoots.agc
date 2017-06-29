PlayerShoots:

// Check if player has fired
if GetPointerPressed()=1 and lazer_fired=0
	playsound(lazer)
	lazer_fired = 1
	lazerx = GetSpriteX(1) + GetSpriteWidth(1)/2 - GetSpriteWidth(2)/2	// position laser in middle of ship
	lazery = GetSpriteY(1) - 40
endif

// If laser has been shot, move it up the screen
if lazer_fired = 1
	lazery = lazery - 12
endif

// If lazer has moved off the screen, hide it
if lazery <- GetSpriteHeight(2)
	lazer_fired = 0
endif

SetSpritePosition(2, lazerx, lazery)

Return
