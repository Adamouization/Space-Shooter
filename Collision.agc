Collision:

if GetSpriteCollision(2,3) = 1	// if collision between player and enemy is true
	PlaySound(explosion)
	score = score + 10
	enemyx = 100 : enemyy = -50
	lazer_fired = 0
	lazerx = -50 : lazery = -50
endif

Return
