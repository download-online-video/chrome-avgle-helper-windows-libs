#!/usr/bin/env bash

cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ..

throw() { echo "fatal: $1"; exit 1; }

[[ -z "$(which 7za)" ]] && throw "p7zip-full is not installed!"
[[ -d tmp ]] || throw "please download dependency archive files into \"tmp\" directory!"

echo ">>> extract archive files >>>"

find ./tmp -type f -name '*.zip' | xargs -I file 7za x file -otmp -y || throw "extract failed!"

echo ">>> remove unused files >>>"

find ./tmp -type f -name 'ffplay.exe' -delete || throw
find ./tmp -type f -name 'ffprobe.exe' -delete || throw
find ./tmp -type d -name 'doc' | xargs -I dir rm -r dir || throw

echo ">>> clean old bundle files >>>";
[[ -f ffmpeg-aria2-win32.7z ]] && rm ffmpeg-aria2-win32.7z;
[[ -f ffmpeg-aria2-win64.7z ]] && rm ffmpeg-aria2-win64.7z;

echo ">>> bundle dependencies >>>";
pushd tmp || throw

7za a ../ffmpeg-aria2-win32.7z \
	ffmpeg-*-win32-static \
	aria2-*-win-32bit-build1 \
	-mx9 -myx9 || throw

7za a ../ffmpeg-aria2-win64.7z \
	ffmpeg-*-win64-static \
	aria2-*-win-64bit-build1 \
	-mx9 -myx9 || throw

echo ">>> clean temporary files >>>"
popd
rm -r tmp || throw

echo "all done!"
