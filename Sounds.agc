/*
Calls subroutines for loading sounds (SFX and music)
*/
LoadSounds:
GoSub LoadSoundEffectFiles
GoSub LoadMusicFiles
Return

/* 
Contains code for loading the game sounds the game sprites, including:
	- loading explosion sounds effects
	- loading lazer firing sounds effects
*/
LoadSoundEffectFiles:
explosion_sound = LoadSound("explosion.wav")
lazer_sound = LoadSound("laser.wav")
Return


/* 
Contains code for loading the game music in OGG format.
*/
LoadMusicFiles:
music = LoadMusicOGG("space_music.ogg")
//PlayMusicOGG(music)
Return
