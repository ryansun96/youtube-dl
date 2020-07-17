## Modified from https://github.com/jbergknoff/Dockerfile/blob/master/youtube-dl/Dockerfile by using latest version of alpine and youtube-dl
FROM alpine:latest
ENV EDGE_REPOSITORY=http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN apk update --repository $EDGE_REPOSITORY \
	&& apk add py-pip ca-certificates \
	&& apk add ffmpeg --repository $EDGE_REPOSITORY \
	&& rm -rf /var/cache/apk/*
RUN pip install youtube_dl
ENTRYPOINT ["youtube-dl"]