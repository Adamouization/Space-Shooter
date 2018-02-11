/* 
Contains code for creating the game sprites, including:
	- loading images
	- assigning them to a sprite
*/
loader:

LoadImage(1,"player_ship.png")
LoadImage(2,"lazer.png")
LoadImage(3,"enemy_ship.png")

// Create player ship and place it at bottom of screen
player as _Player
CreateSprite(101,1)
player.x = GetVirtualWidth()/2 - GetSpriteWidth(101)/2 	// middle of screen
player.y = GetVirtualHeight() - GetSpriteHeight(101)		// bottom of screen
SetSpritePosition(101, player.x, player.y)

// Create lazer shot and place it off screen for now
lazer as _Lazer
lazer.x = -100
lazer.fired = 0
CreateSprite(102,2)
SetSpritePosition(102,-100,-100)

// Create 3 enemy ships and place them at the top of the screen
CreateSprite(103,3)
SetSpritePosition(103,100,20)
CreateSprite(104,3)
SetSpritePosition(104,300,20)
CreateSprite(105,3)
SetSpritePosition(105,500,20)

Return
