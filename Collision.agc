/* 
Contains code for detecting collisions between enemies and lazer shots
*/
Collision:
/* if collision between laser and enemy is true */
for i = 1 to enemies.length
	if GetSpriteCollision(lazer.id, enemies[i].id) = 1	
		PlaySound(explosion_sound)
		score = score + 10
		setSpriteY(enemies[i].id, OFFSCREEN_Y)
		lazer.fired = 0
		lazer.x = OFFSCREEN_Y : lazer.y = OFFSCREEN_Y
	endif
next i
Return


/* 
Contains code for detecting collisions between enemies and the player (= player death), or if enemy ship touches bottom of screen
*/
PlayerDeath:
for i = 1 to enemies.length
	// gameover when collision between enemy ship and player ship
	if GetSpriteCollision(enemies[i].id, player.id) = 1
		PlaySound(explosion_sound)
		gameover = 1
		setSpriteY(enemies[i].id, OFFSCREEN_Y)
	endif
	// game over when enemy ship reaches bottom of screen
	if GetSpriteY(enemies[i].id) > GetVirtualHeight() - (GetSpriteHeight(enemies[i].id)/4)
		PlaySound(explosion_sound)
		gameover = 1
		setSpriteY(enemies[i].id, OFFSCREEN_Y)
	endif
next i
Return


