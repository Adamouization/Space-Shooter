/* 
Contains code for loading the game sounds the game sprites, including:
	- loading explosion sounds effects
	- loading lazer firing sounds effects
*/
Load_sounds:
explosion_sound = LoadSound("explosion.wav")
lazer_sound = LoadSound("laser.wav")
Return


/* 
Contains code for loading the game music in OGG format.
*/
Load_music:
music = LoadMusicOGG("space_music.ogg")
PlayMusicOGG(music)
Return
