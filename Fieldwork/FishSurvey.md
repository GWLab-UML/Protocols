# Fish Surveys
Last updated: JS 3/11/2026

## Downloading videos
These video files can be very large, and thus to process them we store them on an external hard drive named “Shuckira”. 

1. Take SD card out of camera and into a card reader
2. Connect to the hard drive on the computer
3. Drag video files into proper folder on Shuckira and make sure they upload to the hard drive
4. Once videos are uploaded, the SD card is stored in the SD card holder
5. Video meta data and SD card location should be entered into a meta date csv like [video_metaData.csv](https://github.com/GWLab-UML/PIC/blob/main/VideoSurveys/video_metaData.csv)

### Labeling in "Shuckira"
Project > Year > Site > Sampling Month

### Naming video files
MonthYear_Site_Location_Replicate


| MonthYear | Site | Location             | Replicate |
| --------- | ---- | -------------------- | --------- |
| MMYYYY    | NSW1 | R (wild oyster reef) |           |
|           | NSF1 | M (mudflat)          |           |
|           | NSW2 | C (farm cage)        |           |
|           | NSF2 | UC (farm undercage)  |           |
|           | NSW3 |                      |           |

## Scoring videos
**Required application:** VLC media player
### Scoring Resources:
- [Jake Skehan's Creature List](https://docs.google.com/document/d/1mGe1ZErjJXUO5QToPPNwz8OGaflYRuxrhi9M1aFfPkc/edit?tab=t.0)
- field guides kept in the lab
     - Use "*A Practical Guide to the Marine Animals of Northeastern North America*", it is the best one
     - also *Atlantic Seashore*
### Protocol:
1. open the video in VLC media player
2. if the video is a time lapse: click Playback > Speed > Slower until the video slows to around 0.33x or 0.25x 
    - if the video is at regular speed, ignore
3. Click on Tools - in the pop-up window click Video Effects and check the Image Adjust box. Adjust the hue slider until the green tint of the video is gone. ![[../Images/Screenshot 2026-05-08 at 5.53.58 PM.png]]
4. Play the video - wait a few seconds for the camera to settle and video to become clear
5. When something comes into the video frame, pause the video and record the observation in a spreadsheet (for PIC, use [video_scoreData.csv](https://github.com/GWLab-UML/PIC/blob/main/VideoSurveys/video_scoreData.csv))
	- For most things, you will want to count critters individually, as not everything that comes onto the screen in a group will get off at the same time (so make separate entries)
	- Exceptions to this: schools of fish swimming together (if a group enters the frame and leaves the frame together, count this as one entry)
6. When the critter goes out of the frame, wait about 5 seconds to make sure it doesn't come back into the frame. Record the time stamp it leaves.
    - **For fish**, if it leaves then comes back really fast from the same direction, it is probably the same fish. Wait a little longer for fish; about 10 seconds. It can be a bit of a judgement call. 
    - **For crabs/walking critters**, you will have a bit more information. You should be able to see them better, and be able to differentiate them based off of things like size, etc. Easier to tell if its the same critter. Don’t have to wait as long.
7. If there is a group of critters together, count the individuals but record as one observation
8. In excel, you can then subtract the time in from the time out to get the duration the critter was in the frame.
9. Try to at least get a common name for the critter, but a species ID is preferable.
10. Record the activity/behavior of the critter
    - if more than one behavior is observed, pick the most abundant
    - behaviors can be:
        - feeding
        - swimming
        - schooling 
        - fighting (aggressive behavior)
        - scaring (sneaking up on another critter and surprising them)
        - mating

### More notes on scoring:
#### scoring annoying things:
Some creatures will stay in the frame for a long time, which can be annoying as you need to record when they leave the frame, so if you have 1 or multiple hang around, it can be a pain. (snails, hermit crabs). If you notice this, write the time they enter. You can then score the rest of the video if you want or do the following, either way you will eventually have to do this.

#### if it is a group:
If it is a group of creatures, you could do something similar to an individual where you try to see when they go away, but if it is something like snails, you can do a few things. You could count how many are in the frame at the start vs the end. Or you could pick a few select frames to count creatures throughout the video and average your counts. They aren’t moving in and out that often. No matter which one you do, this should be 1 entry if possible. If they’re staying in frame that long you don’t need to try to count individually too much. 

#### schools of fish
Perhaps the most annoying things to score would be schools of fish. If you are scoring a real time video, it is slightly easier, but either way it is quite annoying. This is where the count column comes in handy. When trying to count a school of fish, you will have to pause the video and try to go frame by frame to get an idea of how many fish swim by. This doesn’t have to be super exact, as it can literally be impossible to tell exactly how many there are sometimes (especially if it is time lapse video). Do this for every countable group of fish you see swim by. 
 




