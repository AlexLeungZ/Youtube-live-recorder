# Features

- Support youtube live video recording
- Support video trimming after recording

## System requirement

- Python 3 (for streamlink)
- powershell version 7
- FFmpeg version 4.3
- streamlink version 3

## How to use

### Settings

Use any text editor to edit the following variable:

1. `$channel`: "channel-name-in-string"
2. `$url`: "url-of-the-channel"
3. If you want to change the format of timestamp, update the string after `-UFormat`
4. The code will scan every 15s to check if there is a live on the channel, if you want to change the checking duration, update the variable from `15` to the number you want.

### Record lives from channel

```powershell
.\ytstreamDownload.ps1
```

The video will save in the same directory as the code save.

### Trim and fix videos after recording

```powershell
.\ytstreamTrim.ps1
```

All video in the same directory and in `.mkv` format as the code will be trim.
