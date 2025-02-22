FROM python:alpine
RUN pip install --upgrade pip \
&& apk add ffmpeg \
&& adduser -D yt-dlp
RUN pip install --upgrade yt-dlp yt-dlp-get-pot bgutil-ytdlp-pot-provider
USER yt-dlp
ENTRYPOINT ["yt-dlp"]
