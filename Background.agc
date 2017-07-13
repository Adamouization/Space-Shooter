Make_stars:
CreateImageColor(5,255,255,255,255)	// creates a white block as an image
for i=1 to 100	// Create 100 stars
	CreateSprite(i+5,5)
	SetSpriteSize(i+5,2,2)
	SetSpritePosition(i+5, Random(1,768), Random(1,1024))
next i
Return

Move_stars:
for i=1 to 100
	StarY = GetSpriteY(i+5)+Random(3,7)
	if StarY > 1024
		StarY = 0
	endif
	SetSpritePosition(i+5, GetSpriteX(i+5), StarY)
next i
Return
