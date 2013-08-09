tell application "Spotify"
	if player state is equal to playing then
		next track
	else
		tell application "iTunes" to next track
	end if
end tell