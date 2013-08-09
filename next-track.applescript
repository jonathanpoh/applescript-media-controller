--Get current states of iTunes, Spotify and Rdio
tell application "iTunes" to set itunesState to (player state as text)
tell application "Spotify" to set spotifyState to (player state as text)
tell application "Rdio" to set rdioState to (player state as text)

if spotifyState is equal to "playing" then
	tell application "Spotify" to next track
else if rdioState is equal to "playing" then
	tell application "Rdio" to next track
else
	tell application "iTunes" to next track
end if