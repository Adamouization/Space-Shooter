
// Project: SpaceShooter 
// Created: 2017-06-29
// Author: Adam Jaamour
// email: adam@jaamour.com

// imports
#include "Loader.agc"
#include "PlayerMove.agc"
#include "PlayerShoots.agc"
#include "EnemyMove.agc"
#include "Collision.agc"
#include "Sounds.agc"
#include "Background.agc"
#include "Menu.agc"

// window properties
////SetWindowTitle("Space Shooter")
////SetWindowSize(768,1024,0)
////SetWindowAllowResize(0) // disallow user to resize the window
//SetErrorMode(2)			// show all errors

// set display properties
SetVirtualResolution(768,1024) 	// portrait size, doesn't have to match the window
////SetOrientationAllowed(1,1,1,1) 	// allow both portrait and landscape on mobile devices
////SetSyncRate(30,0) 				// 30fps instead of 60 to save battery
////SetScissor(0,0,0,0) 			// use the maximum available screen space, no black borders
UseNewDefaultFonts(1)			// since version 2.0.22 we can use nicer default fonts

// variables
playerx as float		// player x position
playery as float		// player y position
lazerx as float = -100	// lazer x position
lazery as float			// lazer y position
lazer_fired = 0			// flag
enemyx as float			// enemy ship x position
enemyy as float			// enemy ship y position
enemy_direction = 4		// x-axis enemy direction (left or right)
score = 0				// current game score
highscore = 0			// all-time local high score
gameover = 1			// game status boolean
//MenuCreateOnce = 0

// loading subroutines and setting up game
GoSub Make_stars
GoSub loader
MakeText(score)
GoSub Load_sounds
//GoSub Load_music


// main game loop
do
	if gameover = 1
		GoSub MainMenu
		score = 0
	endif
	
    GoSub PlayerMove
	GoSub PlayerShoots
	GoSub EnemyMove
	
	GoSub Move_stars

	GoSub PlayerDeath

	SetTextString(1, "SCORE: " + str(score))
	if score > highscore
		highscore = score
	endif
	SetTextString(2, "HIGHSCORE: " + str(highscore))
	
	GoSub Collision
    Sync()
loop


// On-screen score
Function MakeText(s)
	CreateText(1, "SCORE: " + str(s))
	SetTextSize(1, 60)
	SetTextPosition(1, 0, 0)
	
	//CreateText(2, "HIGHSCORE: " + str(S))
	//SetTextSize(2, 60)
	//SetTextPosition(1, 500, 0)
EndFunction
