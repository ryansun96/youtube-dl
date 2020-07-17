## youtube-dl

Environment for running [youtube-dl](https://github.com/ytdl-org/youtube-dl) in docker.

* built on top of `alpine` base image
* includes `ffmpeg` in order to allow `youtube-dl` stitch together high quality videos, which are generally served as separate audio and video tracks
* `youtube-dl` is the entrypoint of the image

### Example usage:

Build the image:

```bash
$ docker build -t rsun/youtube-dl:1.0 .
```

Download a video:

```bash
$ docker run -it --rm -v "$(pwd):/src" rsun/youtube-dl:1.0 \
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]' \
    -o /src/video.mp4 \
    https://www.youtube.com/watch?v=irOlNknGG0Q
```
