FROM scratch
MAINTAINER DeedleFake

EXPOSE 443

VOLUME ["/letsencrypt"]
VOLUME ["/config"]

COPY upspinserver /upspinserver

ENTRYPOINT ["/upspinserver", "-letscache", "/letsencrypt", "-serverconfig", "/config"]
