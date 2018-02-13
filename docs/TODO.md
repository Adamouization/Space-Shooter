# Space Shooter Todo

#### Important Features
* assign a hard coded equation to each enemy, with the equation displayed under/above the ship
* save highscore to text file

#### Code Design
* transfer from Tier 1 (AGK BASIC) to Tier 2 (C++)
* assess if really need player/lazer/enemy x and y positions (use getpritex or getspritey instead)

## Done:

#### Important Features
* if enemy touches bottom of screen, game over
* add new enemies (3 total) that move downwards only, with collision logic applying to all of them
* when game restarts, make all enemies start from top (reset y positions)
* center the 3 enemies

#### Code Design
* switch sprite numbering (first 100 are stars, rest are enemy/player/lazer)
* create player, lazer and enemy objects (OO style))
* have an array of enemies
* re-organize module organization
* create new types for star objects + add and use id field for player and lazer objects
* have global constant variables for all positions/speeds/...

#### Minor features
* add button to stop playing
* can shoot with space bar
