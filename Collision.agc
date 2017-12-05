/* 
Contains code for detecting collisions between enemies and lazer shots
*/
Collision:
// if collision between laser and enemy is true
if GetSpriteCollision(2,3) = 1	
	PlaySound(explosion)
	score = score + 10
	enemyx = 100 : enemyy = -50
	lazer_fired = 0
	lazerx = -50 : lazery = -50
endif
Return


/* 
Contains code for detecting collisions between enemies and the player (= player death)
*/
PlayerDeath:
// if collision between enemy ship and player ship
if GetSpriteCollision(3,1) = 1
	PlaySound(explosion)
	gameover = 1
	enemyx=100 : enemyy=-50
endif
Return
