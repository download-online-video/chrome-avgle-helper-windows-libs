# Dependencies for Windows user

Dependencies of [chrome-avgle-helper](https://github.com/download-online-video/chrome-avgle-helper) for Windows user

## How to used

0. Make sure you know your Windows is 32-bit or 64-bit.
	- Howto: <https://support.microsoft.com/en-us/help/827218/how-to-determine-whether-a-computer-is-running-a-32-bit-version-or-64>
1. Download the bundle file into your `windows-libs` directory in your `chrome-avgle-helper` directory.
	- Windows 32-bit: [ffmpeg-aria2-win32.7z](https://raw.githubusercontent.com/download-online-video/chrome-avgle-helper-windows-libs/master/ffmpeg-aria2-win32.7z)
	- Windows 64-bit: [ffmpeg-aria2-win64.7z](https://raw.githubusercontent.com/download-online-video/chrome-avgle-helper-windows-libs/master/ffmpeg-aria2-win64.7z)
2. Extract it in the same directory
3. And execute `./install.sh` again


## Dependency Info

### ffmpeg

Note: `ffmpeg` in the target bundle has been removed `ffplay.exe` and `ffprobe.exe`. Because they are big and unused

- Version: `4.1`
- License: <https://github.com/FFmpeg/FFmpeg/blob/master/LICENSE.md>
- Download form: <https://ffmpeg.zeranoe.com/builds/>

### aria2

- Version: `1.34.0`
- License: <https://github.com/aria2/aria2/blob/master/COPYING>
- Download form: <https://github.com/aria2/aria2/releases>



