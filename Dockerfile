FROM scratch
MAINTAINER DeedleFake

EXPOSE 443

VOLUME ["/config"]

COPY bin/upspinserver /upspinserver
COPY src/upspin.io/rpc/testdata/cert.pem /src/upspin.io/rpc/testdata/cert.pem
COPY src/upspin.io/rpc/testdata/key.pem /src/upspin.io/rpc/testdata/key.pem

ENTRYPOINT ["/upspinserver", "-serverconfig", "/config"]
