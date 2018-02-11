/* 
Contains code for detecting collisions between enemies and lazer shots
*/
Collision:
// if collision between laser and enemy is true
for i=103 to 105
	if GetSpriteCollision(102,i) = 1	
		PlaySound(explosion_sound)
		score = score + 10
		setSpriteY(i, -50)
		lazer.fired = 0
		lazer.x = -50 : lazer.y = -50
	endif
next i
Return


/* 
Contains code for detecting collisions between enemies and the player (= player death), or if enemy ship touches bottom of screen
*/
PlayerDeath:
for i=103 to 105
	// gameover when collision between enemy ship and player ship
	if GetSpriteCollision(i,101) = 1
		PlaySound(explosion_sound)
		gameover = 1
		setSpriteY(i, -50)
	endif
	// game over when enemy ship reaches bottom of screen
	if GetSpriteY(i) > GetVirtualHeight() - (GetSpriteHeight(i)/4)
		PlaySound(explosion_sound)
		gameover = 1
		setSpriteY(i, -50)
	endif
next i

Return


