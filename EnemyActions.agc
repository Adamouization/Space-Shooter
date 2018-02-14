/* 
Contains code for enemy movement, including:
	- moving on the x-axis
	- reversing enemy's movement direction when touching the edge of the screen
*/
EnemyMove:
for i = 103 to 105
	SetSpritePosition(i, GetSpriteX(i), GetSpriteY(i) + ENEMY_SPEED)
next i
Return

/* 
Contains code for enemy text movement, including:
	- the enemy text matching the movements of the enemy sprite
	- keeping the enemy text at the center of the enemy
*/
EnemyTextMove:
for i = 1 to enemies.length
	text_x_new = GetSpriteX(enemies[i].id) + (GetSpriteWidth(enemies[i].id) / 2) - (GetTextTotalWidth(enemies[i].id) / 2)
	text_y_new = GetSpriteY(enemies[i].id) + ENEMY_SPEED + ENEMY_RELATIVE_TEXT_POSITION
	SetTextPosition(enemies[i].id, text_x_new, text_y_new)
next i
Return
