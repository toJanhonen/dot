if application "Spotify" is running then
    tell application "Spotify"
        set currentSong to name of the current track
        set currentArtist to artist of the current track
        set currentAlbum to album of the current track

        try
            return "♫ " & currentSong & " - " & currentArtist & "/" &currentAlbum
        on error err
        end try
    end tell
end if
