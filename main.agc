
// Project: SpaceShooter 
// Created: 2017-06-29
// Author: Adam Jaamour
// email: adam@jaamour.com

// imports
#include "Loader.agc"
#include "PlayerMove.agc"

// window properties
SetWindowTitle("Space Shooter")
SetWindowSize(768,1024,0)
SetWindowAllowResize(0) // disallow user to resize the window
SetErrorMode(2)			// show all errors

// set display properties
SetVirtualResolution(768,1024) 	// portrait size, doesn't have to match the window
SetOrientationAllowed(1,1,1,1) 	// allow both portrait and landscape on mobile devices
SetSyncRate(30,0) 				// 30fps instead of 60 to save battery
SetScissor(0,0,0,0) 			// use the maximum available screen space, no black borders
UseNewDefaultFonts(1)			// since version 2.0.22 we can use nicer default fonts

// variables
playerx as float	// player position
playery as float	// player position

GoSub loader

do
    GoSub PlayerMove

    Sync()
loop
