--Define the lastPaused property and give it a default value
property lastPaused : ""

--Get current states of iTunes and Spotify
tell application "iTunes" to set itunesState to (player state as text)
tell application "Spotify" to set spotifyState to (player state as text)

--Pause the active app; play the last-paused app
if itunesState is equal to "playing" then
	tell application "iTunes" to playpause
	set lastPaused to "iTunes"
else if spotifyState is equal to "playing" then
	tell application "Spotify" to playpause
	set lastPaused to "Spotify"
else if ((itunesState is equal to "paused") and (lastPaused is equal to "iTunes")) then
	tell application "iTunes" to playpause
else if ((spotifyState is equal to "paused") and (lastPaused is equal to "Spotify")) then
	tell application "Spotify" to playpause
end if