
## Homework 6 (Due Dec 24, Mon 13:30)

### DVD Screensaver to Game: Catch me if you can

Some retro Action / Arcade Games to remember:

[Pong (1972 Atari)](https://www.youtube.com/watch?v=e4VRgY3tkh0) BONUS! Project Game Over: [The Human Pong](https://www.youtube.com/watch?v=sWY0Q_lMFfw)

[Space Invaders (1979)](https://www.youtube.com/watch?v=kR2fjwr-TzA) BONUS! Project Game Over: [The Human Space Invaders](https://www.youtube.com/watch?v=VczbbiRmDik)

[Pac-Man (1980)](https://www.youtube.com/watch?v=-CbyAk3Sn9I) BONUS! Project Game Over: [The Human Pacman](https://www.youtube.com/watch?v=M3D0JvYJkGc)

A more recent game based on similar basic rules as DVD screensaver > Game but has a complex structure: [Agario (2015)](https://agar.io)

Design a simple, fast-paced Action / Arcade Game based on the DVD screensaver homework. Use simple typography to keep score or show other basic data. Start with the least amount of rules. You may use simple shapes and/or images to represent the characters and baits in the game.

Guide for the homework:
- **single player**
- **one protagonist** (movement using arrow keys: up-down, left-right)
- **one (or more) antagonist** (self moving)
- keep **score** using "food": eat randomly placed "food" on canvas without getting caught by the antagonist, increase your score accordingly 

**BONUS** - make it fun: you may place some food that cause the antagonist or protagonist to move faster/slower, shrink/grow etc.
- limit the **time**: GAME OVER after 10 secs. Use [millis()](https://processing.org/reference/millis_.html) to calculate the remaining time

**BONUS** - make it fun: at some specific second in gameplay, you may make the display darker (black screen or a darker overlay) but the game continues in the background, etc.

You will define "eating food" and "colliding with the antagonist" by checking the **boundary conditions of the objects**. Remember the distance calculations we did in class. This time you will check both the "protagonist and food", "protagonist and antagonist" boundaries to define the clash condition!

You may use images to visualize the characters.

You may define more rules to your game, but keep it simple first and try to make it playable.

Your submissions (.pde files) should start with a comments section where you define the game rules and controls. Use the comments block: /* */

Upload the sketch folder in a single .zip (max. 2 MB) to Google Drive folder **/h6-CatchMeIfYouCan**. Naming: **vcds2105f18_h6_YourNameSurname.zip** (Use English characters for your name and surname please)
