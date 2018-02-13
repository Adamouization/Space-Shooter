/* 
Contains code for creating the game sprites, including:
	- loading images
	- assigning them to a sprite
*/
Loader:

/* Load the images in the app */ 
LoadImage(1, "player_ship.png")
LoadImage(2, "lazer.png")
LoadImage(3, "enemy_ship.png")

/* Create player ship and place it at bottom of screen */
player as _Player
player.id = 101
CreateSprite(player.id, 1)
player.x = GetVirtualWidth()/2 - GetSpriteWidth(player.id) / 2 	// set player in middle of screen
player.y = GetVirtualHeight() - GetSpriteHeight(player.id)		// set player at bottom of screen
SetSpritePosition(player.id, player.x, player.y)

/* Create lazer shot and place it off screen when not shot */
lazer as _Lazer
lazer.id = 102
lazer.x = -100
lazer.fired = 0
CreateSprite(lazer.id, 2)
SetSpritePosition(lazer.id, lazer.x, OFFSCREEN_Y)

/* Create 3 enemy ships and place them at the top of the screen */
dim enemies[3] as _Enemy
distance_between_enemies = ((GetVirtualWidth() - (GetImageWidth(3) * 3)) / 3) + 100

// middle enemy
enemies[1].id = 103
CreateSprite(enemies[1].id, 3)
enemies[1].x = GetVirtualWidth()/2 - GetSpriteWidth(enemies[1].id)/2
enemies[1].y = ENEMY_Y_POSITION
enemies[1].speed = 10
enemies[1].text = "22"
SetSpritePosition(enemies[1].id, enemies[1].x, enemies[1].y)

// left enemy
enemies[2].id = 104
CreateSprite(enemies[2].id, 3)
enemies[2].x = GetSpriteX(enemies[1].id) - distance_between_enemies
enemies[2].y = ENEMY_Y_POSITION
enemies[2].speed = 10
enemies[2].text = "41"
SetSpritePosition(enemies[2].id, enemies[2].x, enemies[2].y)

// right enemy
enemies[3].id = 105
CreateSprite(enemies[3].id, 3)
enemies[3].x = GetSpriteX(enemies[1].id) + distance_between_enemies
enemies[3].y = ENEMY_Y_POSITION
enemies[3].speed = 10
enemies[3].text = "22"
SetSpritePosition(enemies[3].id, enemies[3].x, enemies[3].y)

Return
