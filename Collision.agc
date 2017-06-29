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
