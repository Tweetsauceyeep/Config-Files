#!/usr/bin/env bash

MUSIC_INFO=$(osascript <<EOF
on titleCase(theString)
	set UpperFirstCharString to do shell script "echo " & character 1 of theString & " | tr [:lower:] [:upper:]"
	set theString to UpperFirstCharString & characters 2 through -1 of theString
	return theString
end titleCase

on appRunning(appName)
	if application appName is running then
		return true
	else
		return false
	end if
end appRunning

on musicPlaying()
	tell application "Music"
		set playerState to (get player state) as text
	end tell
	
	if playerState is "paused" then
		set stateIcon to " "
	else if playerState is "stopped" then
		set stateIcon to " "
	else if playerState is "playing" then
		set stateIcon to " "
	end if
		
	if playerState is not "stopped" then
		return {true, titleCase(playerState), stateIcon}
	else
		return {false, titleCase(playerState), stateIcon}
	end if
end musicPlaying

on getTrackInfo()
	set appRunning to appRunning("Music")
	set musicPlaying to musicPlaying()	
	
	if appRunning is true then
		if item 1 of musicPlaying is true then
			tell application "Music"
				set info to get {name, artist, album} of current track
				return "" & item 3 of musicPlaying & "  " & item 1 of info & " x " & item 2 of info & " - " & item 3 of info
			end tell
		else
			return item 3 of musicPlaying & "  Music Stopped "
		end if
	else
		return "    Music App Not Running "
	end if
end getTrackInfo

getTrackInfo()
EOF
)

printf "$MUSIC_INFO" 
