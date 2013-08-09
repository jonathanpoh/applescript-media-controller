--Get current states of iTunes, Spotify and Rdio
tell application "iTunes" to set itunesState to (player state as text)
tell application "Spotify" to set spotifyState to (player state as text)
tell application "Rdio" to set rdioState to (player state as text)

if spotifyState is equal to "playing" then
	tell application "Spotify" to set player position to (player position + 30)
else if rdioState is equal to "playing" then
	-- not working correctly due to a bug where it's setting it as a percent
	-- and not by seconds. see https://github.com/rdio/api/issues/80
	tell application "Rdio" to set player position to (player position + 30)
else
	tell application "iTunes" to set player position to (player position + 30)
end if
