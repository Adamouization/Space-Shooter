/* 
Contains code for enemy movement, including:
	- moving on the x-axis
	- reversing enemy's movement direction when touching the edge of the screen
*/

EnemyMove:

enemyy = enemyy + 3		//move enemy down the screen

// When enemy reaches right edge of screen, make it move left
if enemy_direction = 4 and enemyx > GetVirtualWidth() - GetSpriteWidth(3)
	enemy_direction = -4
endif

// When enemy reaches left edge of screen, make it move right
if enemy_direction = -4 and enemyx < 0
	enemy_direction = 4
endif

enemyx = enemyx + enemy_direction

SetSpritePosition(3, enemyx, enemyy)

Return
