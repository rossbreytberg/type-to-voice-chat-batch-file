@echo off

set TEMP_FILE_PATH="message.wav"

set ESPEAK_PATH="C:\Program Files (x86)\eSpeak\command_line\espeak"
set ESPEAK_SPEED=120
set ESPEAK_VOICE="en-us"
set ESPEAK_VOLUME=20

set VLC_PATH="C:\Program Files (x86)\VideoLAN\VLC\vlc"

:set_message
set /p MESSAGE="Enter Message: "
set MESSAGE="%MESSAGE%"

%ESPEAK_PATH% -a %ESPEAK_VOLUME% -s %ESPEAK_SPEED% -v %ESPEAK_VOICE% -w %TEMP_FILE_PATH% %MESSAGE%
start "" %VLC_PATH% --play-and-exit -I dummy --dummy-quiet --aout=waveout --directx-audio-device="CABLE Input (VB-Audio Virtual C ($1,$64)" %TEMP_FILE_PATH%

goto set_message