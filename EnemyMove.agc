EnemyMove:

enemyy = enemyy + 1		//move enemy down the screen

if enemy_direction = 4 and enemyx > GetVirtualWidth() - GetSpriteWidth(3)
	enemy_direction = -4
endif

if enemy_direction = -4 and enemyx < 0
	enemy_direction = 4
endif

enemyx = enemyx + enemy_direction

SetSpritePosition(3, enemyx, enemyy)

Return
