# Type to Voice Chat

## What is this?
This batch script converts text you type into sound and transmits it to voice chatting programs such as Discord or Skype.

(Windows only)

## Setup Instructions
1. **Install [eSpeak](http://espeak.sourceforge.net/)** for generating speech from text.
2. **Install [VLC](http://www.videolan.org/)** media player to playback the speech generated by eSpeak.
3. **Install [VB-CABLE Virtual Audio Device](http://vb-audio.pagesperso-orange.fr/Cable/)**. The script will target VLC playback to this virtual audio device's input.
4. Set Discord, Skype, or any other voice chatting program to use VB-CABLE Virtual Audio Device as its voice input. Remember to turn off push-to-talk and instead make the program transmit on voice activity.
5. Click on `speak.bat`, type a message, and press enter. It should get played back to the voice chatting software.

## Getting an Error
Verify the included `speak.bat` file has the correct values for the `ESPEAK_PATH` and `VLC_PATH` variables.

## How to Hear the Generated Speech
1. Open **Control Panel**.
2. Choose **View by Large Icons**.
3. Open **Sound** settings dialog.
4. Select to the **Recording** tab.
5. Double-click on **CABLE Output** to open its settings dialog.
6. Select the **Listen** tab.
7. Check the box labeled **Listen to this device**.

## *(Recommended)* Improved Voice
1. Follow the [Mbrola Voice](http://espeak.sourceforge.net/mbrola.html) instructions to allow eSpeak to use improved voices. (The `en1` voice sounds the most natural.)
2. Edit the included `speak.bat` file to change the `ESPEAK_VOICE` variable to be the name of the Mbrola voice, such as `mb-en1`.

## Additional Voice Adjustments
Adjust the `ESPEAK_SPEED` and `ESPEAK_VOLUME` variables as necessary.
