# How to Update Dependencies 

## 0x01. Preparation

Install `p7zip-full`

## 0x01. Download

Download the archive files into `tmp` directory

### ffmpeg

<https://ffmpeg.zeranoe.com/builds/>

- Architecture: `Windows 64-bit` and `Windows 32-bit`
- Linking: `Static`

### aria2

<https://github.com/aria2/aria2/releases>

## 0x02. Create bundle

``` bash
./scripts/after-download.sh
```

## 0x03. Update README

Update the version info in `README.md`
