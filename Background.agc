Make_stars:
CreateImageColor(5,255,255,255,255)	// creates a white block as an image
for i=1 to 100	// Create 100 stars
	CreateSprite(i+3,5)
	SetSpriteSize(i+3,2,2)
	SetSpritePosition(i+3, Random(1,768), Random(1,1024))
next i
Return

Move_stars:
for i=1 to 100
	StarY = GetSpriteY(i+3)+Random(3,7)
	if StarY > 1024
		StarY = 0
	endif
	SetSpritePosition(i+3, GetSpriteX(i+3), StarY)
next i
Return
