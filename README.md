Applescript Universal Media Player Control
==========================================

AppleScripts that check for the current music player and controls whichever was used last. Allows external controllers or hotkeys to control iTunes, Spotify and Rdio without needing separate mappings for each app.

Griffin Powermate
-----------------

To use these with the [Griffin Powermate](http://store.griffintechnology.com/powermate) device, do the following:


1. Create a new Global trigger and call it "Player Play/Pause" (or whatever you like)
2. Choose your trigger options and modifiers. Mine's just on Normal Press with no modifiers
3. Add an AppleScript action to the Play/Pause trigger
4. Copy and Paste the contents of `play-pause.applescript` into the Run custom script text field.

*This is required because we're storing the state of which player application is currently playing, and that state is lost if we run the script using "Run existing script" from the file*

Repeat steps 1-3 to create "Next Track" and "Skip 30s" triggers, but for those two scripts, you can just point to the `next-track.applescript` and `skip30s.applescript` files directly.

Credits
-------
Thanks to Justin Blanton (Twitter @jblanton) for coming up with the original scripts for using the PowerMate with iTunes and Spotify.
http://hypertext.net/2011/11/applescript-powermate-media-apps/
