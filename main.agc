/*
Project: SpaceShooter 
Created: 2017-06-29
Last updated: 2018-02-13
Version: 0.0.0
Author: Adam Jaamour
email: adam@jaamour.com
*/

/* imports */
#include "Loader.agc"
#include "PlayerActions.agc"
#include "EnemyActions.agc"
#include "Collision.agc"
#include "Sounds.agc"
#include "Background.agc"
#include "Menu.agc"

/* global variables */
#constant WINDOW_WIDTH = 768
#constant WINDOW_HEIGHT = 1024
#constant OFFSCREEN_Y = -50
#constant ENEMY_Y_POSITION = 20
#constant ENEMY_SPEED = 3
#constant LAZER_SPEED = 12
#constant PLAYER_SPEED = 12

/* window properties */
SetWindowTitle("Space Shooter")
SetWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT, 0)
SetWindowAllowResize(0) 						// disallow user to resize the window
SetErrorMode(2)								// show all errors

/* set display properties */
SetVirtualResolution(WINDOW_WIDTH, WINDOW_HEIGHT) 		// portrait size, doesn't have to match the window
SetOrientationAllowed(1, 1, 1, 1) 						// allow both portrait and landscape on mobile devices
SetSyncRate(60, 0) 
SetScissor(0, 0, 0, 0) 				// use the maximum available screen space, no black borders
UseNewDefaultFonts(1)				// since version 2.0.22 we can use nicer default fonts

/* types */
Type _Player
	x as float			// player x position
	y as float			// player y position	
EndType
Type _Enemy
	id as integer		// enemy sprite id
	x as float			// enemy x position
	y as float			// enemy y position
	speed as integer	// enemy speed on y-axis	
	text as string		// string following the enemy
EndType
Type _Lazer	
	x as float			// lazer x position
	y as float			// lazer y position
	fired as integer	// flag
EndType

/* module variables */
score = 0				// current game score
highscore = 0			// all-time local high score
gameover = 1			// game status boolean
menu_created = 0		// game menu created once

/* loading subroutines and setting up game */
GoSub Make_stars
GoSub Loader
MakeText(score)
GoSub Load_sounds
//GoSub Load_music


/* main game loop */
do
	if gameover = 1
		GoSub MainMenu
		score = 0
	endif
	
    GoSub PlayerMove
	GoSub PlayerShoots
	GoSub EnemyMove
	GoSub PlayerDeath
	
	GoSub Move_stars

	SetTextString(1, "SCORE: " + str(score))
	if score > highscore
		highscore = score
	endif
	SetTextString(4, "HIGHSCORE: " + str(highscore))
	SetTextPosition(4, 768 - GetTextTotalWidth(4) , 0)
	
	GoSub Collision
	
	if GetRawKeyPressed(80) // 'P' key pressed
		gameover = 1
	endif
		
    Sync()
loop


/* On-screen score */
Function MakeText(s)
	CreateText(1, "SCORE: " + str(s))
	SetTextSize(1, 60)
	SetTextPosition(1, 0, 0)
EndFunction
