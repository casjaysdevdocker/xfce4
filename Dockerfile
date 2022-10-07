FROM casjaysdevdocker/alpine:latest as stage

RUN apk update && \
  apk add --no-cache \
  xfce4 \
  xfce4-terminal \
  xfce4-screensaver \
  lightdm-gtk-greeter \
  dbus \
  xfce4

FROM scratch
ARG BUILD_DATE="$(date +'%Y-%m-%d %H:%M')"

ENV \
  SHELL=/bin/bash; \
  TERM=xterm-256color; \
  HOSTNAME=${HOSTNAME:-casjaysdev-xfce4}; \
  TZ=${TZ:-America/New_York};

LABEL \
  org.label-schema.name="alpine" \
  org.label-schema.description="Base Alpine Linux" \
  org.label-schema.url="https://hub.docker.com/r/casjaysdevdocker/alpine" \
  org.label-schema.vcs-url="https://github.com/casjaysdevdocker/alpine" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.version=$BUILD_DATE \
  org.label-schema.vcs-ref=$BUILD_DATE \
  org.label-schema.license="WTFPL" \
  org.label-schema.vcs-type="Git" \
  org.label-schema.schema-version="latest" \
  org.label-schema.vendor="CasjaysDev" \
  maintainer="CasjaysDev <docker-admin@casjaysdev.com>"

COPY --from=stage /. /

CMD startxfce4
