tell application "Spotify"
	if player state is equal to playing then
		set player position to (player position + 30)
	else
		tell application "iTunes" to set player position to (player position + 30)
	end if
end tell