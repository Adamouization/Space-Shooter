/* 
Contains code for enemy movement, including:
	- moving on the x-axis
	- reversing enemy's movement direction when touching the edge of the screen
*/
EnemyMove:
for i=103 to 105
	SetSpritePosition(i, GetSpriteX(i), GetSpriteY(i) + 3)
next i
Return
