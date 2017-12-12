/* 
Contains code for enemy movement, including:
	- moving on the x-axis
	- reversing enemy's movement direction when touching the edge of the screen
*/

EnemyMove:

enemyy = enemyy + 3		//move enemy down the screen

enemyx = enemyx

SetSpritePosition(103, enemyx, enemyy)

Return
