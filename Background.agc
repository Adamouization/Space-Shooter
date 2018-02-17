/* 
Contains code for creating the background:
	- create 100 small white dots as sprites to simulate stars
	- give them a random starting position on the screen
*/
CreateStarsBackground:

dim stars[100] as _Star
CreateImageColor(5, 255, 255, 255, 255)	// creates a white block as an image

for i = 1 to stars.length	// Create 100 stars
	stars[i].id = i
	stars[i].width = 2
	stars[i].height = 2
	CreateSprite(stars[i].id, 5)
	SetSpriteSize(stars[i].id, stars[i].width, stars[i].height)
	SetSpritePosition(stars[i].id, Random(1, WINDOW_WIDTH), Random(1, WINDOW_HEIGHT))
next i

Return


/* 
Contains code for moving the stars in the background:
	- move each sprite by a random amount between 3-7 on their y-axis (upwards)
*/
MoveStars:

for i = 1 to stars.length
	StarY = GetSpriteY(stars[i].id) + Random(3, 7)
	if StarY > WINDOW_HEIGHT
		StarY = 0
	endif
	SetSpritePosition(stars[i].id, GetSpriteX(stars[i].id), StarY)
next i

Return
